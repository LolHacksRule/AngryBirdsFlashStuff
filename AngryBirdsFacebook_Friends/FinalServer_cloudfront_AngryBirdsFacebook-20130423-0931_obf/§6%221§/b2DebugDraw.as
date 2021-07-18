package §6"1§
{
   import §,"[§.b2Color;
   import §,"[§.b2internal;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §?O§:uint = 1;
      
      public static var §12§:uint = 2;
      
      public static var §9Q§:uint = 4;
      
      public static var §in§:uint = 8;
      
      public static var §7#§:uint = 16;
      
      public static var §1!L§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?O§ = 1;
            while(true)
            {
               §12§ = 2;
            }
            addr102:
         }
         loop1:
         while(true)
         {
            §9Q§ = 4;
            while(true)
            {
               §in§ = 8;
               loop3:
               while(true)
               {
                  §7#§ = 16;
                  while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(!_loc1_)
               {
                  return;
               }
               §§goto(addr102);
            }
         }
      }
      
      private var §0!<§:uint;
      
      b2internal var §5!t§:Sprite;
      
      private var §^!W§:Number = 1.0;
      
      private var §9"E§:Number = 1.0;
      
      private var §"!i§:Number = 1.0;
      
      private var §"!e§:Number = 1.0;
      
      private var §>" §:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super();
            do
            {
               this.§0!<§ = 0;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §5"C§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§0!<§ = param1;
         }
      }
      
      public function §6"Q§() : uint
      {
         return this.§0!<§;
      }
      
      public function §5a§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0!<§ |= param1;
         }
      }
      
      public function §@,§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§0!<§ &= ~param1;
         }
      }
      
      public function §,!B§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!t§ = param1;
         }
      }
      
      public function §6@§() : Sprite
      {
         return this.§5!t§;
      }
      
      public function §<!d§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!W§ = param1;
         }
      }
      
      public function §5!K§() : Number
      {
         return this.§^!W§;
      }
      
      public function §[Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§9"E§ = param1;
         }
      }
      
      public function §;U§() : Number
      {
         return this.§9"E§;
      }
      
      public function §3"G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"!i§ = param1;
         }
      }
      
      public function §<#§() : Number
      {
         return this.§"!i§;
      }
      
      public function §3c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§"!e§ = param1;
         }
      }
      
      public function §95§() : Number
      {
         return this.§"!e§;
      }
      
      public function §2!@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>" § = param1;
         }
      }
      
      public function §`I§() : Number
      {
         return this.§>" §;
      }
      
      public function §2!W§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
            if(_loc5_ || this)
            {
               this.§5!t§.graphics.moveTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(!_loc6_)
               {
                  this.§5!t§.graphics.lineTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
               }
               if(_loc6_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               this.§5!t§.graphics.lineTo(param1[_loc4_].x * this.§^!W§,param1[_loc4_].y * this.§^!W§);
            }
            _loc4_++;
         }
      }
      
      public function §2O§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§5!t§.graphics.moveTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr38);
         }
         var _loc4_:int = 1;
         loop4:
         while(true)
         {
            if(_loc4_ >= param2)
            {
               loop5:
               while(true)
               {
                  this.§5!t§.graphics.lineTo(param1[0].x * this.§^!W§,param1[0].y * this.§^!W§);
                  while(!_loc5_)
                  {
                     this.§5!t§.graphics.endFill();
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                           if(_loc6_ || param2)
                           {
                              break loop4;
                           }
                           addr168:
                           _loc4_++;
                           break;
                        }
                        continue loop5;
                     }
                  }
                  continue loop4;
               }
            }
            else
            {
               this.§5!t§.graphics.lineTo(param1[_loc4_].x * this.§^!W§,param1[_loc4_].y * this.§^!W§);
               §§goto(addr168);
            }
         }
      }
      
      public function §7"%§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
         }
         do
         {
            this.§5!t§.graphics.drawCircle(param1.x * this.§^!W§,param1.y * this.§^!W§,param2 * this.§^!W§);
         }
         while(_loc5_ && param3);
         
      }
      
      public function §2"P§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,param4.color,this.§"!i§);
            while(true)
            {
               this.§5!t§.graphics.moveTo(0,0);
               addr151:
               while(true)
               {
                  this.§5!t§.graphics.beginFill(param4.color,this.§"!e§);
                  addr143:
                  while(true)
                  {
                     this.§5!t§.graphics.drawCircle(param1.x * this.§^!W§,param1.y * this.§^!W§,param2 * this.§^!W§);
                  }
               }
            }
            addr162:
         }
         do
         {
            this.§5!t§.graphics.endFill();
            while(true)
            {
               if(!_loc5_)
               {
                  this.§5!t§.graphics.moveTo(param1.x * this.§^!W§,param1.y * this.§^!W§);
                  continue;
               }
               §§goto(addr162);
            }
            §§goto(addr151);
         }
         while(!(_loc6_ || param3));
         
      }
      
      public function §%!2§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,param3.color,this.§"!i§);
            while(true)
            {
               this.§5!t§.graphics.moveTo(param1.x * this.§^!W§,param1.y * this.§^!W§);
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     this.§5!t§.graphics.lineTo(param2.x * this.§^!W§,param2.y * this.§^!W§);
                     if(_loc5_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §>"Z§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!t§.graphics.lineStyle(this.§9"E§,16711680,this.§"!i§);
            while(true)
            {
               this.§5!t§.graphics.moveTo(param1.position.x * this.§^!W§,param1.position.y * this.§^!W§);
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     this.§5!t§.graphics.lineTo((param1.position.x + this.§>" § * param1.R.col1.x) * this.§^!W§,(param1.position.y + this.§>" § * param1.R.col1.y) * this.§^!W§);
                     loop3:
                     while(true)
                     {
                        this.§5!t§.graphics.lineStyle(this.§9"E§,65280,this.§"!i§);
                        loop4:
                        while(_loc2_)
                        {
                           this.§5!t§.graphics.moveTo(param1.position.x * this.§^!W§,param1.position.y * this.§^!W§);
                           while(_loc2_)
                           {
                              this.§5!t§.graphics.lineTo((param1.position.x + this.§>" § * param1.R.col2.x) * this.§^!W§,(param1.position.y + this.§>" § * param1.R.col2.y) * this.§^!W§);
                              if(_loc2_ || param1)
                              {
                                 if(_loc2_)
                                 {
                                    return;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
   }
}
