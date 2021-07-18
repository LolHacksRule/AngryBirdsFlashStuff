package § o§
{
   import §"0§.b2Color;
   import §"0§.b2internal;
   import §6!H§.b2Transform;
   import §6!H§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §4O§:uint = 1;
      
      public static var §?!1§:uint = 2;
      
      public static var §]k§:uint = 4;
      
      public static var §=t§:uint = 8;
      
      public static var §<!9§:uint = 16;
      
      public static var §0l§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4O§ = 1;
            while(true)
            {
               §?!1§ = 2;
               loop1:
               while(true)
               {
                  §]k§ = 4;
                  addr93:
                  while(true)
                  {
                     §=t§ = 8;
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private var §+0§:uint;
      
      b2internal var §5,§:Sprite;
      
      private var §]§:Number = 1.0;
      
      private var §8!`§:Number = 1.0;
      
      private var §<! §:Number = 1.0;
      
      private var §2!7§:Number = 1.0;
      
      private var §<!Y§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§+0§ = 0;
            }
            while(_loc2_);
            
         }
      }
      
      public function §2!9§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+0§ = param1;
         }
      }
      
      public function §5!h§() : uint
      {
         return this.§+0§;
      }
      
      public function §`o§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+0§ |= param1;
         }
      }
      
      public function § !Y§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+0§ &= ~param1;
         }
      }
      
      public function §5!>§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§5,§ = param1;
         }
      }
      
      public function §%!R§() : Sprite
      {
         return this.§5,§;
      }
      
      public function §9y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§]§ = param1;
         }
      }
      
      public function §'b§() : Number
      {
         return this.§]§;
      }
      
      public function §<F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§8!`§ = param1;
         }
      }
      
      public function §+!F§() : Number
      {
         return this.§8!`§;
      }
      
      public function §]!@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§<! § = param1;
         }
      }
      
      public function §!!8§() : Number
      {
         return this.§<! §;
      }
      
      public function §?B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!7§ = param1;
         }
      }
      
      public function §'!J§() : Number
      {
         return this.§2!7§;
      }
      
      public function §2!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§<!Y§ = param1;
         }
      }
      
      public function §^q§() : Number
      {
         return this.§<!Y§;
      }
      
      public function §]!1§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
            if(_loc6_ || this)
            {
               addr36:
               this.§5,§.graphics.moveTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc6_)
                  {
                     this.§5,§.graphics.lineTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
                  }
                  if(!(_loc6_ || param3))
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§5,§.graphics.lineTo(param1[_loc4_].x * this.§]§,param1[_loc4_].y * this.§]§);
               }
               _loc4_++;
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §>!c§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  this.§5,§.graphics.moveTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
                  continue loop0;
               }
            }
            addr69:
         }
         while(true)
         {
            this.§5,§.graphics.beginFill(param3.color,this.§2!7§);
            if(_loc6_ && param1)
            {
               continue;
            }
            if(!_loc6_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr69);
            }
            §§goto(addr39);
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc6_ && param2)
               {
                  break;
               }
               if(_loc5_ || param3)
               {
                  this.§5,§.graphics.lineTo(param1[0].x * this.§]§,param1[0].y * this.§]§);
                  break;
               }
               loop4:
               while(_loc6_ && param3)
               {
                  while(true)
                  {
                     _loc4_++;
                     continue loop4;
                  }
               }
               continue;
            }
            this.§5,§.graphics.lineTo(param1[_loc4_].x * this.§]§,param1[_loc4_].y * this.§]§);
            §§goto(addr177);
         }
         do
         {
            this.§5,§.graphics.endFill();
         }
         while(!(_loc5_ || param1));
         
      }
      
      public function §%!<§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
            do
            {
               this.§5,§.graphics.drawCircle(param1.x * this.§]§,param1.y * this.§]§,param2 * this.§]§);
            }
            while(_loc4_);
            
         }
      }
      
      public function §%]§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,param4.color,this.§<! §);
            while(true)
            {
               this.§5,§.graphics.moveTo(0,0);
               addr150:
               while(true)
               {
                  this.§5,§.graphics.beginFill(param4.color,this.§2!7§);
               }
            }
            addr171:
         }
         loop2:
         while(true)
         {
            this.§5,§.graphics.drawCircle(param1.x * this.§]§,param1.y * this.§]§,param2 * this.§]§);
            addr132:
            while(true)
            {
               this.§5,§.graphics.endFill();
               continue loop2;
            }
         }
      }
      
      public function § W§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,param3.color,this.§<! §);
            while(true)
            {
               this.§5,§.graphics.moveTo(param1.x * this.§]§,param1.y * this.§]§);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            this.§5,§.graphics.lineTo(param2.x * this.§]§,param2.y * this.§]§);
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §7!8§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§5,§.graphics.lineStyle(this.§8!`§,16711680,this.§<! §);
            while(true)
            {
               this.§5,§.graphics.moveTo(param1.position.x * this.§]§,param1.position.y * this.§]§);
               loop1:
               while(true)
               {
                  this.§5,§.graphics.lineTo((param1.position.x + this.§<!Y§ * param1.R.col1.x) * this.§]§,(param1.position.y + this.§<!Y§ * param1.R.col1.y) * this.§]§);
                  while(true)
                  {
                     this.§5,§.graphics.lineStyle(this.§8!`§,65280,this.§<! §);
                     loop3:
                     while(!_loc2_)
                     {
                        this.§5,§.graphics.moveTo(param1.position.x * this.§]§,param1.position.y * this.§]§);
                        while(true)
                        {
                           this.§5,§.graphics.lineTo((param1.position.x + this.§<!Y§ * param1.R.col2.x) * this.§]§,(param1.position.y + this.§<!Y§ * param1.R.col2.y) * this.§]§);
                           if(!_loc2_)
                           {
                              if(_loc3_ || this)
                              {
                                 continue loop1;
                              }
                              continue loop3;
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
