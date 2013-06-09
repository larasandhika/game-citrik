package  
{
	import flash.geom.Point;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import globalvar;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level4_player extends Entity 
	{
		[Embed(source="assets gray/citrik_samping_sprite_125_220.png")]
		private const _playercitrik:Class;
		private var playercitrik:Spritemap = new Spritemap(_playercitrik, 125, 220);
		
		public var speed:Point = new Point(0, 0);
		public var xSpeed:Number = 0;
		public var ySpeed:Number = 0;
		public var gravity:Number = 0.2;
		
		private var collidedown:Boolean = false;
		
		private var playerheight:Number = 190;
		private var countdowndead:Number = 0;
		private var playerdead:Boolean = false;
		
		
		public function level4_player(_x:Number, _y:Number) 
		{
			layer = -1;
			type = "player";
			x = _x;
			y = _y;
			
			playercitrik.add("walk", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 20, true);
			playercitrik.add("up", [14, 15], 20, false);
			playercitrik.add("down", [19, 20], 20, false);
			
			playercitrik.play("walk");
			playercitrik.y = -20;
			
			graphic = playercitrik;
			
			setHitbox(90, 190, -25, 0);
		}
		
		override public function update():void 
		{
			//x -= globalvar.level4speed;
			if (globalvar.playercheckfast == true)
			{
				speed.x = 4;
			}
			if (globalvar.playercheckslow == true)
			{
				speed.x = -2;
			}
			if (globalvar.playercheckslow == false && globalvar.playercheckfast == false)
			{
				speed.x = 0;
			}
			
			
			if (collide("floor", x, y - 2))
			{
				collide("floor", x, y - 2).type = "wall";
				collidedown = false;
			}
			/*if (collide("floor", x + 1, y))
			{
				collide("floor", x + 1, y).type = "wall";
				collidedown = false;
			}
			if (collide("floor", x - 1, y))
			{
				collide("floor", x - 1, y).type = "wall";
				//collidedown = false;
			}*/
			
			if (!collide("floor", x, y + 1))
			{
				if (speed.y >= 0)
				{
					playercitrik.play("down", true, 0);
				}
				else
				{
					playercitrik.play("up", true, 0);
				}
				
				collidedown = true;
				if (collide("wall", x, y - 1))
				{
					collidedown = true;
				}
				
				if (collidedown == true && speed.y >= 0)
				{
					if (collide("wall", x, y) && (playerheight - (collide("wall", x, y).y - y)) < 5)
					{
						collide("wall", x, y).type = "floor";
					}
				}
				globalvar.playeronjump = true;
				speed.y += gravity;
			}
			
			if (collide("floor", x, y + 1))
			{
				if (playerheight - (collide("floor", x, y + 1).y - y) < 10)
				{
					y -= (playerheight - (collide("floor", x, y + 1).y - y));
					speed.y = 0;
				}
				collidedown = false;
				
				if (globalvar.playeronjump == true)
				{
					playercitrik.play("walk");
					globalvar.playeronjump = false;
				}
				if (globalvar.playercheckjump == true)
				{
					//playercitrik.play("up", true, 0);
					speed.y = -10;
					globalvar.playercheckjump = false;
				}
			}
			
			if (collide("point", x, y + 1))
			{
				globalvar.level4point += 10;
				FP.world.remove(collide("point", x, y + 1));
			}
			
			if (collide("minus", x, y + 1))
			{
				globalvar.level4point -= 10;
				FP.world.remove(collide("minus", x, y + 1));
			}
			
			if (collide("dead", x, y + 1))
			{
				playerdead = true;
				globalvar.level4speed = 0;
				graphic.active = false;
			}
			
			if (playerdead == true)
			{
				countdowndead++;
				if (countdowndead >= 60)
				{
					globalvar.gamelevel = "level4print";
					globalvar.gameload = true;
				}
			}
			
			moveBy(speed.x, speed.y, "floor");
			
			super.update();
		}
		
		override public function moveCollideX(e:Entity):Boolean 
		{
			if (e.type == "floor")
			{
				speed.x = 0;
			}
			return true;
		}
		
		override public function moveCollideY(e:Entity):Boolean 
		{
			if (e.type == "floor")
			{
				speed.y = 0;
			}
			return true;
		}
		
	}

}