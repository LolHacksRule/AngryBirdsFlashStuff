package §#V§
{
   import §3!m§.b2Color;
   import §3!m§.b2internal;
   import §;%§.b2Transform;
   import §;%§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var § J§:uint = 1;
      
      public static var §]!G§:uint = 2;
      
      public static var §3T§:uint = 4;
      
      public static var §<!x§:uint = 8;
      
      public static var §9v§:uint = 16;
      
      public static var §<b§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && b2DebugDraw))
         {
            § J§ = 1;
            while(true)
            {
               §]!G§ = 2;
               loop1:
               while(_loc2_ || b2DebugDraw)
               {
                  §3T§ = 4;
                  loop2:
                  while(true)
                  {
                     §<!x§ = 8;
                     while(true)
                     {
                        §9v§ = 16;
                        loop4:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              §<b§ = 32;
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      private var §9!9§:uint;
      
      b2internal var §4@§:Sprite;
      
      private var §+!]§:Number = 1.0;
      
      private var §4_§:Number = 1.0;
      
      private var §case §:Number = 1.0;
      
      private var §10§:Number = 1.0;
      
      private var §2@§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§9!9§ = 0;
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §=!s§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!9§ = param1;
         }
      }
      
      public function §!5§() : uint
      {
         return this.§9!9§;
      }
      
      public function §4D§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!9§ |= param1;
         }
      }
      
      public function §<u§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9!9§ &= ~param1;
         }
      }
      
      public function §9!H§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§4@§ = param1;
         }
      }
      
      public function §5!r§() : Sprite
      {
         return this.§4@§;
      }
      
      public function §4Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+!]§ = param1;
         }
      }
      
      public function §0!<§() : Number
      {
         return this.§+!]§;
      }
      
      public function §+e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4_§ = param1;
         }
      }
      
      public function §^!0§() : Number
      {
         return this.§4_§;
      }
      
      public function §6!w§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§case § = param1;
         }
      }
      
      public function §8!§() : Number
      {
         return this.§case §;
      }
      
      public function §8$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§10§ = param1;
         }
      }
      
      public function §@!Z§() : Number
      {
         return this.§10§;
      }
      
      public function §1]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2@§ = param1;
         }
      }
      
      public function §0u§() : Number
      {
         return this.§2@§;
      }
      
      public function §6!@§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
            if(_loc6_)
            {
               addr36:
               this.§4@§.graphics.moveTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc6_ || param1)
                  {
                     this.§4@§.graphics.lineTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc5_ && this)
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§4@§.graphics.lineTo(param1[_loc4_].x * this.§+!]§,param1[_loc4_].y * this.§+!]§);
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §%!e§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§4@§.graphics.moveTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
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
                  if(!_loc5_)
                  {
                     this.§4@§.graphics.lineTo(param1[0].x * this.§+!]§,param1[0].y * this.§+!]§);
                     while(!(_loc5_ && param3))
                     {
                        this.§4@§.graphics.endFill();
                        if(!(_loc5_ && param3))
                        {
                           if(!(_loc5_ && param1))
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
               }
               return;
            }
            this.§4@§.graphics.lineTo(param1[_loc4_].x * this.§+!]§,param1[_loc4_].y * this.§+!]§);
            _loc4_++;
         }
      }
      
      public function §!c§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
            do
            {
               this.§4@§.graphics.drawCircle(param1.x * this.§+!]§,param1.y * this.§+!]§,param2 * this.§+!]§);
            }
            while(!_loc5_);
            
         }
      }
      
      public function §,%§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§4@§.graphics.lineStyle(this.§4_§,param4.color,this.§case §);
            while(true)
            {
               this.§4@§.graphics.moveTo(0,0);
               loop1:
               while(!_loc6_)
               {
                  this.§4@§.graphics.beginFill(param4.color,this.§10§);
                  while(true)
                  {
                     this.§4@§.graphics.drawCircle(param1.x * this.§+!]§,param1.y * this.§+!]§,param2 * this.§+!]§);
                     loop3:
                     for(; !(_loc6_ && this); if(!(_loc6_ && this))
                     {
                        continue loop1;
                     })
                     {
                        while(true)
                        {
                           this.§4@§.graphics.endFill();
                           loop5:
                           while(true)
                           {
                              this.§4@§.graphics.moveTo(param1.x * this.§+!]§,param1.y * this.§+!]§);
                              while(true)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    continue loop3;
                                 }
                                 continue loop5;
                                 addr102:
                                 this.§4@§.graphics.lineTo((param1.x + param3.x * param2) * this.§+!]§,(param1.y + param3.y * param2) * this.§+!]§);
                                 if(_loc5_)
                                 {
                                    return;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr102);
               }
            }
         }
         §§goto(addr135);
      }
      
      public function §@!7§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§4@§.graphics.lineStyle(this.§4_§,param3.color,this.§case §);
         }
         while(true)
         {
            this.§4@§.graphics.moveTo(param1.x * this.§+!]§,param1.y * this.§+!]§);
            while(!(_loc5_ && this))
            {
               this.§4@§.graphics.lineTo(param2.x * this.§+!]§,param2.y * this.§+!]§);
               if(_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public function §<G§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4@§.graphics.lineStyle(this.§4_§,16711680,this.§case §);
            while(true)
            {
               this.§4@§.graphics.moveTo(param1.position.x * this.§+!]§,param1.position.y * this.§+!]§);
               loop1:
               while(true)
               {
                  this.§4@§.graphics.lineTo((param1.position.x + this.§2@§ * param1.R.col1.x) * this.§+!]§,(param1.position.y + this.§2@§ * param1.R.col1.y) * this.§+!]§);
                  addr160:
                  while(true)
                  {
                     this.§4@§.graphics.lineStyle(this.§4_§,65280,this.§case §);
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            this.§4@§.graphics.lineTo((param1.position.x + this.§2@§ * param1.R.col2.x) * this.§+!]§,(param1.position.y + this.§2@§ * param1.R.col2.y) * this.§+!]§);
            if(!(_loc2_ && this))
            {
               break;
            }
            §§goto(addr92);
         }
      }
   }
}
