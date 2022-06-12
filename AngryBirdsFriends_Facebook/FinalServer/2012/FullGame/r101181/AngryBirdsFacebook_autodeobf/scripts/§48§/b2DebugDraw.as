package §48§
{
   import §#]§.b2Transform;
   import §#]§.b2Vec2;
   import §4!!§.b2Color;
   import §4!!§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §6!e§:uint = 1;
      
      public static var §]!L§:uint = 2;
      
      public static var §8!I§:uint = 4;
      
      public static var §?!J§:uint = 8;
      
      public static var §8o§:uint = 16;
      
      public static var §<"3§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §6!e§ = 1;
         }
         while(true)
         {
            §]!L§ = 2;
            loop1:
            for(; _loc2_; if(_loc2_ || _loc2_)
            {
               return;
            })
            {
               §8!I§ = 4;
               loop2:
               while(true)
               {
                  §?!J§ = 8;
                  loop3:
                  do
                  {
                     §8o§ = 16;
                     while(_loc2_)
                     {
                        §<"3§ = 32;
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(_loc1_);
                  
                  continue loop1;
               }
            }
         }
      }
      
      private var §'$§:uint;
      
      b2internal var §0`§:Sprite;
      
      private var §%j§:Number = 1.0;
      
      private var §!g§:Number = 1.0;
      
      private var §;"=§:Number = 1.0;
      
      private var §[G§:Number = 1.0;
      
      private var §3r§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§'$§ = 0;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function §<!;§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'$§ = param1;
         }
      }
      
      public function §&K§() : uint
      {
         return this.§'$§;
      }
      
      public function §9N§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'$§ |= param1;
         }
      }
      
      public function §#!;§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'$§ &= ~param1;
         }
      }
      
      public function §=B§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0`§ = param1;
         }
      }
      
      public function §8!^§() : Sprite
      {
         return this.§0`§;
      }
      
      public function §`!m§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%j§ = param1;
         }
      }
      
      public function §]7§() : Number
      {
         return this.§%j§;
      }
      
      public function §!!1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!g§ = param1;
         }
      }
      
      public function §99§() : Number
      {
         return this.§!g§;
      }
      
      public function §9!g§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§;"=§ = param1;
         }
      }
      
      public function §,"+§() : Number
      {
         return this.§;"=§;
      }
      
      public function §=o§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[G§ = param1;
         }
      }
      
      public function §^>§() : Number
      {
         return this.§[G§;
      }
      
      public function §4]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3r§ = param1;
         }
      }
      
      public function §>?§() : Number
      {
         return this.§3r§;
      }
      
      public function §98§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
            if(!(_loc5_ && this))
            {
               this.§0`§.graphics.moveTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc6_ || this)
               {
                  this.§0`§.graphics.lineTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
               }
               if(_loc6_)
               {
                  break;
               }
            }
            else
            {
               this.§0`§.graphics.lineTo(param1[_loc4_].x * this.§%j§,param1[_loc4_].y * this.§%j§);
               while(true)
               {
                  _loc4_++;
               }
               addr138:
            }
            while(!_loc6_)
            {
               §§goto(addr138);
            }
         }
      }
      
      public function §-"!§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  this.§0`§.graphics.moveTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
                  addr57:
                  while(!_loc5_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§0`§.graphics.beginFill(param3.color,this.§[G§);
            if(!_loc5_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr38);
            }
            §§goto(addr57);
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc6_ || param1)
               {
                  if(!_loc5_)
                  {
                     this.§0`§.graphics.lineTo(param1[0].x * this.§%j§,param1[0].y * this.§%j§);
                     break;
                  }
                  loop5:
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop5;
                     }
                  }
                  continue;
                  addr140:
               }
               break;
            }
            this.§0`§.graphics.lineTo(param1[_loc4_].x * this.§%j§,param1[_loc4_].y * this.§%j§);
            §§goto(addr163);
            §§goto(addr140);
         }
         do
         {
            this.§0`§.graphics.endFill();
         }
         while(!_loc6_);
         
      }
      
      public function §^"6§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
            do
            {
               this.§0`§.graphics.drawCircle(param1.x * this.§%j§,param1.y * this.§%j§,param2 * this.§%j§);
            }
            while(!_loc5_);
            
         }
      }
      
      public function §3B§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,param4.color,this.§;"=§);
         }
         loop0:
         while(true)
         {
            this.§0`§.graphics.moveTo(0,0);
            loop1:
            while(true)
            {
               this.§0`§.graphics.beginFill(param4.color,this.§[G§);
               while(true)
               {
                  this.§0`§.graphics.drawCircle(param1.x * this.§%j§,param1.y * this.§%j§,param2 * this.§%j§);
                  loop3:
                  while(!_loc5_)
                  {
                     this.§0`§.graphics.endFill();
                     while(!_loc5_)
                     {
                        this.§0`§.graphics.moveTo(param1.x * this.§%j§,param1.y * this.§%j§);
                        continue loop1;
                        if(!(_loc5_ && param2))
                        {
                           if(!(_loc5_ && param3))
                           {
                              return;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function § !L§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,param3.color,this.§;"=§);
            while(true)
            {
               this.§0`§.graphics.moveTo(param1.x * this.§%j§,param1.y * this.§%j§);
               while(_loc5_)
               {
                  this.§0`§.graphics.lineTo(param2.x * this.§%j§,param2.y * this.§%j§);
                  if(!(_loc4_ && param1))
                  {
                     return;
                     addr71:
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §#b§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§0`§.graphics.lineStyle(this.§!g§,16711680,this.§;"=§);
            while(true)
            {
               this.§0`§.graphics.moveTo(param1.position.x * this.§%j§,param1.position.y * this.§%j§);
               while(!_loc2_)
               {
                  this.§0`§.graphics.lineTo((param1.position.x + this.§3r§ * param1.R.col1.x) * this.§%j§,(param1.position.y + this.§3r§ * param1.R.col1.y) * this.§%j§);
                  loop2:
                  for(; !_loc2_; if(_loc3_ || this)
                  {
                     addr78:
                     return;
                  })
                  {
                     this.§0`§.graphics.lineStyle(this.§!g§,65280,this.§;"=§);
                     loop3:
                     while(true)
                     {
                        this.§0`§.graphics.moveTo(param1.position.x * this.§%j§,param1.position.y * this.§%j§);
                        addr106:
                        while(true)
                        {
                           this.§0`§.graphics.lineTo((param1.position.x + this.§3r§ * param1.R.col2.x) * this.§%j§,(param1.position.y + this.§3r§ * param1.R.col2.y) * this.§%j§);
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr78);
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
   }
}
