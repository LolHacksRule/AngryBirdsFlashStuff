package §3!`§
{
   import §'F§.b2Color;
   import §'F§.b2internal;
   import §6Z§.b2Transform;
   import §6Z§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §2!L§:uint = 1;
      
      public static var § !5§:uint = 2;
      
      public static var §<v§:uint = 4;
      
      public static var §-!2§:uint = 8;
      
      public static var §"!k§:uint = 16;
      
      public static var §!!a§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §2!L§ = 1;
         }
         loop0:
         do
         {
            § !5§ = 2;
            while(true)
            {
               §<v§ = 4;
               while(!_loc1_)
               {
                  §-!2§ = 8;
                  while(!(_loc1_ && b2DebugDraw))
                  {
                     §"!k§ = 16;
                     do
                     {
                        §!!a§ = 32;
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      private var §4N§:uint;
      
      b2internal var §0C§:Sprite;
      
      private var §#!3§:Number = 1.0;
      
      private var §3!v§:Number = 1.0;
      
      private var §,_§:Number = 1.0;
      
      private var §-!p§:Number = 1.0;
      
      private var §6!#§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
            do
            {
               this.§4N§ = 0;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §;!n§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§4N§ = param1;
         }
      }
      
      public function §^!L§() : uint
      {
         return this.§4N§;
      }
      
      public function §<"#§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§4N§ |= param1;
         }
      }
      
      public function §`!s§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§4N§ &= ~param1;
         }
      }
      
      public function §`!r§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0C§ = param1;
         }
      }
      
      public function §?"-§() : Sprite
      {
         return this.§0C§;
      }
      
      public function §&!L§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!3§ = param1;
         }
      }
      
      public function §4" §() : Number
      {
         return this.§#!3§;
      }
      
      public function §-!b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3!v§ = param1;
         }
      }
      
      public function §?`§() : Number
      {
         return this.§3!v§;
      }
      
      public function §4"§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§,_§ = param1;
         }
      }
      
      public function §'!a§() : Number
      {
         return this.§,_§;
      }
      
      public function §@!B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-!p§ = param1;
         }
      }
      
      public function §?l§() : Number
      {
         return this.§-!p§;
      }
      
      public function §4!x§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§6!#§ = param1;
         }
      }
      
      public function §0!f§() : Number
      {
         return this.§6!#§;
      }
      
      public function §;!`§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
            if(!(_loc5_ && param3))
            {
               addr41:
               this.§0C§.graphics.moveTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(!(_loc6_ || this))
                  {
                     break;
                  }
                  if(_loc6_ || this)
                  {
                     this.§0C§.graphics.lineTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
                     break;
                  }
                  loop1:
                  while(_loc5_ && param1)
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§0C§.graphics.lineTo(param1[_loc4_].x * this.§#!3§,param1[_loc4_].y * this.§#!3§);
               §§goto(addr153);
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §6T§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         }
         while(true)
         {
            while(true)
            {
               this.§0C§.graphics.moveTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
               do
               {
                  this.§0C§.graphics.beginFill(param3.color,this.§-!p§);
               }
               while(!_loc5_);
               
               if(_loc6_ && param3)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:int = 1;
               while(true)
               {
                  if(_loc4_ >= param2)
                  {
                     if(!(_loc6_ && param1))
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                        this.§0C§.graphics.lineTo(param1[0].x * this.§#!3§,param1[0].y * this.§#!3§);
                     }
                     while(!_loc6_)
                     {
                        this.§0C§.graphics.endFill();
                        if(!_loc6_)
                        {
                           return;
                        }
                     }
                  }
                  else
                  {
                     this.§0C§.graphics.lineTo(param1[_loc4_].x * this.§#!3§,param1[_loc4_].y * this.§#!3§);
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      public function §9!6§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
         }
         do
         {
            this.§0C§.graphics.drawCircle(param1.x * this.§#!3§,param1.y * this.§#!3§,param2 * this.§#!3§);
         }
         while(!_loc5_);
         
      }
      
      public function §=!]§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,param4.color,this.§,_§);
            loop0:
            while(true)
            {
               this.§0C§.graphics.moveTo(0,0);
               while(true)
               {
                  this.§0C§.graphics.beginFill(param4.color,this.§-!p§);
                  loop3:
                  for(; !(_loc6_ && param1); if(!(_loc6_ && this))
                  {
                     return;
                  })
                  {
                     this.§0C§.graphics.endFill();
                     loop4:
                     for(; _loc5_; if(_loc5_ || param1)
                     {
                        continue loop3;
                     })
                     {
                        this.§0C§.graphics.moveTo(param1.x * this.§#!3§,param1.y * this.§#!3§);
                        while(!(_loc6_ && param2))
                        {
                           this.§0C§.graphics.lineTo((param1.x + param3.x * param2) * this.§#!3§,(param1.y + param3.y * param2) * this.§#!3§);
                           if(!(_loc6_ && param1))
                           {
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           this.§0C§.graphics.drawCircle(param1.x * this.§#!3§,param1.y * this.§#!3§,param2 * this.§#!3§);
                           continue loop3;
                           §§goto(addr100);
                        }
                        addr100:
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      public function § >§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,param3.color,this.§,_§);
            while(true)
            {
               this.§0C§.graphics.moveTo(param1.x * this.§#!3§,param1.y * this.§#!3§);
               while(_loc5_ || this)
               {
                  this.§0C§.graphics.lineTo(param2.x * this.§#!3§,param2.y * this.§#!3§);
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §@x§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§0C§.graphics.lineStyle(this.§3!v§,16711680,this.§,_§);
            while(true)
            {
               this.§0C§.graphics.moveTo(param1.position.x * this.§#!3§,param1.position.y * this.§#!3§);
               loop1:
               while(true)
               {
                  this.§0C§.graphics.lineTo((param1.position.x + this.§6!#§ * param1.R.col1.x) * this.§#!3§,(param1.position.y + this.§6!#§ * param1.R.col1.y) * this.§#!3§);
                  while(true)
                  {
                     this.§0C§.graphics.lineStyle(this.§3!v§,65280,this.§,_§);
                     continue loop1;
                     addr75:
                     if(!(_loc3_ && param1))
                     {
                        return;
                        addr82:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§0C§.graphics.lineTo((param1.position.x + this.§6!#§ * param1.R.col2.x) * this.§#!3§,(param1.position.y + this.§6!#§ * param1.R.col2.y) * this.§#!3§);
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            if(_loc2_ || param1)
            {
               §§goto(addr75);
            }
            §§goto(addr121);
         }
         §§goto(addr82);
      }
   }
}
