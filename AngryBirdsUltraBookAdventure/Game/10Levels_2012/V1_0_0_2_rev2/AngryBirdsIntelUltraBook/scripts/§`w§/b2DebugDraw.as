package §`w§
{
   import §7!u§.b2Color;
   import §7!u§.b2internal;
   import §>H§.b2Transform;
   import §>H§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §;!s§:uint = 1;
      
      public static var §5!9§:uint = 2;
      
      public static var §<9§:uint = 4;
      
      public static var §!-§:uint = 8;
      
      public static var §;!o§:uint = 16;
      
      public static var §%!n§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §;!s§ = 1;
            while(true)
            {
               §5!9§ = 2;
               loop1:
               for(; !(_loc1_ && _loc1_); while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     §;!o§ = 16;
                     §§goto(addr55);
                  }
               })
               {
                  §<9§ = 4;
                  while(true)
                  {
                     §!-§ = 8;
                     continue loop1;
                     addr57:
                     if(!(_loc1_ && b2DebugDraw))
                     {
                        §%!n§ = 32;
                        addr64:
                        if(_loc2_ || _loc1_)
                        {
                           return;
                           addr55:
                        }
                        while(!_loc1_)
                        {
                           §§goto(addr57);
                           §§goto(addr64);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private var §+H§:uint;
      
      b2internal var §%C§:Sprite;
      
      private var §^!c§:Number = 1.0;
      
      private var §^0§:Number = 1.0;
      
      private var §>!5§:Number = 1.0;
      
      private var §;!l§:Number = 1.0;
      
      private var §!B§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§+H§ = 0;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §%!A§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+H§ = param1;
         }
      }
      
      public function §3F§() : uint
      {
         return this.§+H§;
      }
      
      public function §4!3§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§+H§ |= param1;
         }
      }
      
      public function §^!e§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+H§ &= ~param1;
         }
      }
      
      public function §%o§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§%C§ = param1;
         }
      }
      
      public function §"t§() : Sprite
      {
         return this.§%C§;
      }
      
      public function §^!k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^!c§ = param1;
         }
      }
      
      public function §?!-§() : Number
      {
         return this.§^!c§;
      }
      
      public function §6M§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^0§ = param1;
         }
      }
      
      public function §'!<§() : Number
      {
         return this.§^0§;
      }
      
      public function §"!3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!5§ = param1;
         }
      }
      
      public function §&!?§() : Number
      {
         return this.§>!5§;
      }
      
      public function §+^§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;!l§ = param1;
         }
      }
      
      public function §[!L§() : Number
      {
         return this.§;!l§;
      }
      
      public function §8i§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§!B§ = param1;
         }
      }
      
      public function §`!g§() : Number
      {
         return this.§!B§;
      }
      
      public function §6!j§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
            if(_loc6_)
            {
               this.§%C§.graphics.moveTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(!(_loc5_ && param3))
               {
                  this.§%C§.graphics.lineTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
               }
               if(!_loc5_)
               {
                  break;
               }
            }
            else
            {
               this.§%C§.graphics.lineTo(param1[_loc4_].x * this.§^!c§,param1[_loc4_].y * this.§^!c§);
               while(true)
               {
                  _loc4_++;
               }
               addr133:
            }
            while(_loc5_)
            {
               §§goto(addr133);
            }
         }
      }
      
      public function §`u§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
         }
         loop0:
         while(true)
         {
            addr37:
            addr85:
            addr152:
            while(true)
            {
               this.§%C§.graphics.moveTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
               continue loop0;
            }
            var _loc4_:int = 1;
            loop3:
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  loop4:
                  while(true)
                  {
                     if(_loc5_)
                     {
                        this.§%C§.graphics.lineTo(param1[0].x * this.§^!c§,param1[0].y * this.§^!c§);
                        while(_loc5_ || param1)
                        {
                           this.§%C§.graphics.endFill();
                           if(!(_loc6_ && param1))
                           {
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        continue loop3;
                     }
                  }
                  return;
               }
               this.§%C§.graphics.lineTo(param1[_loc4_].x * this.§^!c§,param1[_loc4_].y * this.§^!c§);
               _loc4_++;
            }
         }
      }
      
      public function §<!L§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
            do
            {
               this.§%C§.graphics.drawCircle(param1.x * this.§^!c§,param1.y * this.§^!c§,param2 * this.§^!c§);
            }
            while(_loc5_);
            
         }
      }
      
      public function §%u§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§%C§.graphics.lineStyle(this.§^0§,param4.color,this.§>!5§);
            loop0:
            while(true)
            {
               this.§%C§.graphics.moveTo(0,0);
               loop1:
               while(true)
               {
                  this.§%C§.graphics.beginFill(param4.color,this.§;!l§);
                  while(true)
                  {
                     this.§%C§.graphics.drawCircle(param1.x * this.§^!c§,param1.y * this.§^!c§,param2 * this.§^!c§);
                     loop3:
                     while(_loc5_)
                     {
                        this.§%C§.graphics.endFill();
                        loop4:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              this.§%C§.graphics.moveTo(param1.x * this.§^!c§,param1.y * this.§^!c§);
                              while(_loc5_)
                              {
                                 this.§%C§.graphics.lineTo((param1.x + param3.x * param2) * this.§^!c§,(param1.y + param3.y * param2) * this.§^!c§);
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop4;
                           }
                           return;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §32§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            this.§%C§.graphics.lineStyle(this.§^0§,param3.color,this.§>!5§);
            while(true)
            {
               this.§%C§.graphics.moveTo(param1.x * this.§^!c§,param1.y * this.§^!c§);
               §§goto(addr88);
            }
         }
         addr88:
         while(true)
         {
            this.§%C§.graphics.lineTo(param2.x * this.§^!c§,param2.y * this.§^!c§);
            if(_loc4_ || this)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function § 0§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%C§.graphics.lineStyle(this.§^0§,16711680,this.§>!5§);
         }
         loop0:
         while(true)
         {
            this.§%C§.graphics.moveTo(param1.position.x * this.§^!c§,param1.position.y * this.§^!c§);
            do
            {
               this.§%C§.graphics.lineTo((param1.position.x + this.§!B§ * param1.R.col1.x) * this.§^!c§,(param1.position.y + this.§!B§ * param1.R.col1.y) * this.§^!c§);
               while(true)
               {
                  this.§%C§.graphics.lineStyle(this.§^0§,65280,this.§>!5§);
                  continue loop0;
               }
            }
            while(!(_loc2_ || _loc3_));
            
            return;
         }
      }
   }
}
