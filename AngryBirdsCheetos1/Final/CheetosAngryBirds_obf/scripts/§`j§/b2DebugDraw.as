package §`j§
{
   import §0!G§.b2Transform;
   import §0!G§.b2Vec2;
   import §2!F§.b2Color;
   import §2!F§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §?A§:uint = 1;
      
      public static var §1d§:uint = 2;
      
      public static var §#! §:uint = 4;
      
      public static var §#!3§:uint = 8;
      
      public static var §7!C§:uint = 16;
      
      public static var §-!+§:uint = 32;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?A§ = 1;
            loop0:
            while(true)
            {
               §1d§ = 2;
               while(true)
               {
                  §#! § = 4;
                  while(!(_loc2_ && _loc1_))
                  {
                     §7!C§ = 16;
                     loop4:
                     while(!_loc2_)
                     {
                        §-!+§ = 32;
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §#!3§ = 8;
                                 break loop4;
                              }
                              addr77:
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private var §;c§:uint;
      
      b2internal var §-X§:Sprite;
      
      private var §"!J§:Number = 1.0;
      
      private var §8]§:Number = 1.0;
      
      private var §<!E§:Number = 1.0;
      
      private var §=i§:Number = 1.0;
      
      private var §=!&§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§;c§ = 0;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §#!_§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;c§ = param1;
         }
      }
      
      public function §'!F§() : uint
      {
         return this.§;c§;
      }
      
      public function §#!H§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;c§ |= param1;
         }
      }
      
      public function §-z§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;c§ &= ~param1;
         }
      }
      
      public function §`!O§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-X§ = param1;
         }
      }
      
      public function §5^§() : Sprite
      {
         return this.§-X§;
      }
      
      public function §8;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"!J§ = param1;
         }
      }
      
      public function §?1§() : Number
      {
         return this.§"!J§;
      }
      
      public function §7y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§8]§ = param1;
         }
      }
      
      public function §@&§() : Number
      {
         return this.§8]§;
      }
      
      public function §9!7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§<!E§ = param1;
         }
      }
      
      public function §^!$§() : Number
      {
         return this.§<!E§;
      }
      
      public function §'k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=i§ = param1;
         }
      }
      
      public function §3!§() : Number
      {
         return this.§=i§;
      }
      
      public function §,!=§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§=!&§ = param1;
         }
      }
      
      public function §1!E§() : Number
      {
         return this.§=!&§;
      }
      
      public function §2!'§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
            if(!(_loc6_ && param2))
            {
               addr35:
               this.§-X§.graphics.moveTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(!_loc6_)
                  {
                     this.§-X§.graphics.lineTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
                     break;
                  }
                  loop1:
                  while(!(_loc5_ || param1))
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§-X§.graphics.lineTo(param1[_loc4_].x * this.§"!J§,param1[_loc4_].y * this.§"!J§);
               §§goto(addr137);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §1!>§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         }
         loop0:
         while(true)
         {
            addr33:
            addr71:
            addr143:
            while(true)
            {
               this.§-X§.graphics.moveTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
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
                     this.§-X§.graphics.lineTo(param1[0].x * this.§"!J§,param1[0].y * this.§"!J§);
                     while(_loc6_ || param1)
                     {
                        if(!(_loc5_ && param1))
                        {
                           this.§-X§.graphics.endFill();
                           if(_loc6_ || param1)
                           {
                              if(!_loc5_)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                           continue;
                        }
                     }
                     continue loop3;
                  }
                  return;
               }
               this.§-X§.graphics.lineTo(param1[_loc4_].x * this.§"!J§,param1[_loc4_].y * this.§"!J§);
               _loc4_++;
            }
         }
      }
      
      public function §=!9§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
         }
         do
         {
            this.§-X§.graphics.drawCircle(param1.x * this.§"!J§,param1.y * this.§"!J§,param2 * this.§"!J§);
         }
         while(!(_loc5_ || this));
         
      }
      
      public function §85§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,param4.color,this.§<!E§);
            while(true)
            {
               this.§-X§.graphics.moveTo(0,0);
            }
            addr176:
         }
         loop1:
         while(true)
         {
            this.§-X§.graphics.beginFill(param4.color,this.§=i§);
            loop2:
            while(true)
            {
               if(!(_loc5_ || param1))
               {
                  continue loop1;
               }
               this.§-X§.graphics.drawCircle(param1.x * this.§"!J§,param1.y * this.§"!J§,param2 * this.§"!J§);
               while(!_loc6_)
               {
                  this.§-X§.graphics.endFill();
                  continue loop2;
                  addr78:
                  if(_loc5_ || param2)
                  {
                     this.§-X§.graphics.lineTo((param1.x + param3.x * param2) * this.§"!J§,(param1.y + param3.y * param2) * this.§"!J§);
                     addr95:
                     if(!(_loc6_ && param2))
                     {
                        return;
                        addr76:
                     }
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           continue loop2;
                        }
                        §§goto(addr78);
                        §§goto(addr95);
                     }
                  }
               }
               §§goto(addr176);
            }
         }
      }
      
      public function §;n§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,param3.color,this.§<!E§);
            do
            {
               this.§-X§.graphics.moveTo(param1.x * this.§"!J§,param1.y * this.§"!J§);
               do
               {
                  this.§-X§.graphics.lineTo(param2.x * this.§"!J§,param2.y * this.§"!J§);
               }
               while(!_loc4_);
               
            }
            while(_loc5_ && param3);
            
         }
      }
      
      public function §]!-§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-X§.graphics.lineStyle(this.§8]§,16711680,this.§<!E§);
            loop0:
            while(true)
            {
               this.§-X§.graphics.moveTo(param1.position.x * this.§"!J§,param1.position.y * this.§"!J§);
               while(true)
               {
                  this.§-X§.graphics.lineTo((param1.position.x + this.§=!&§ * param1.R.col1.x) * this.§"!J§,(param1.position.y + this.§=!&§ * param1.R.col1.y) * this.§"!J§);
                  while(!(_loc2_ && _loc2_))
                  {
                     if(_loc3_)
                     {
                        this.§-X§.graphics.lineStyle(this.§8]§,65280,this.§<!E§);
                        loop3:
                        while(!_loc2_)
                        {
                           this.§-X§.graphics.moveTo(param1.position.x * this.§"!J§,param1.position.y * this.§"!J§);
                           do
                           {
                              if(_loc3_ || this)
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                           while(this.§-X§.graphics.lineTo((param1.position.x + this.§=!&§ * param1.R.col2.x) * this.§"!J§,(param1.position.y + this.§=!&§ * param1.R.col2.y) * this.§"!J§), _loc2_ && param1);
                           
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
   }
}
