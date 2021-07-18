package §"J§
{
   import §<!a§.b2Transform;
   import §<!a§.b2Vec2;
   import §<";§.b2Color;
   import §<";§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §^!F§:uint = 1;
      
      public static var §^!M§:uint = 2;
      
      public static var §+!1§:uint = 4;
      
      public static var §<!Z§:uint = 8;
      
      public static var §#!=§:uint = 16;
      
      public static var §,!I§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §^!F§ = 1;
            loop0:
            while(true)
            {
               §^!M§ = 2;
               loop1:
               while(true)
               {
                  §+!1§ = 4;
                  addr61:
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §,!I§ = 32;
                  addr68:
                  if(!(_loc1_ && b2DebugDraw))
                  {
                     if(_loc1_)
                     {
                        while(true)
                        {
                           §<!Z§ = 8;
                           loop3:
                           while(true)
                           {
                              §#!=§ = 16;
                              addr59:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr61);
                                 §§goto(addr68);
                              }
                              continue loop1;
                           }
                        }
                        return;
                        addr54:
                        addr88:
                     }
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr59);
               }
            }
         }
         §§goto(addr88);
      }
      
      private var §=",§:uint;
      
      b2internal var §5!H§:Sprite;
      
      private var §6!`§:Number = 1.0;
      
      private var §&!e§:Number = 1.0;
      
      private var §]p§:Number = 1.0;
      
      private var §;J§:Number = 1.0;
      
      private var §5,§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.§=",§ = 0;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §4!&§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=",§ = param1;
         }
      }
      
      public function §=m§() : uint
      {
         return this.§=",§;
      }
      
      public function §0!Q§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=",§ |= param1;
         }
      }
      
      public function §3!Q§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=",§ &= ~param1;
         }
      }
      
      public function §39§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§5!H§ = param1;
         }
      }
      
      public function §7"+§() : Sprite
      {
         return this.§5!H§;
      }
      
      public function §9!n§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§6!`§ = param1;
         }
      }
      
      public function §-'§() : Number
      {
         return this.§6!`§;
      }
      
      public function §1!N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!e§ = param1;
         }
      }
      
      public function §=!,§() : Number
      {
         return this.§&!e§;
      }
      
      public function §#Q§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]p§ = param1;
         }
      }
      
      public function §<!l§() : Number
      {
         return this.§]p§;
      }
      
      public function §0O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§;J§ = param1;
         }
      }
      
      public function §1!s§() : Number
      {
         return this.§;J§;
      }
      
      public function §9!8§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5,§ = param1;
         }
      }
      
      public function §]J§() : Number
      {
         return this.§5,§;
      }
      
      public function § "8§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
            if(!(_loc5_ && param3))
            {
               addr36:
               this.§5!H§.graphics.moveTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  if(!(_loc5_ && param1))
                  {
                     this.§5!H§.graphics.lineTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
                     break;
                  }
                  loop1:
                  while(!(_loc6_ || this))
                  {
                     while(true)
                     {
                        _loc4_++;
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§5!H§.graphics.lineTo(param1[_loc4_].x * this.§6!`§,param1[_loc4_].y * this.§6!`§);
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §8w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  this.§5!H§.graphics.moveTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§5!H§.graphics.beginFill(param3.color,this.§;J§);
            if(!(_loc6_ && param2))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr37);
            }
            §§goto(addr56);
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
                  this.§5!H§.graphics.lineTo(param1[0].x * this.§6!`§,param1[0].y * this.§6!`§);
                  while(true)
                  {
                     if(!(_loc6_ && this))
                     {
                        this.§5!H§.graphics.endFill();
                        if(!(_loc6_ && param2))
                        {
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 break loop4;
                              }
                              break;
                           }
                           continue loop5;
                        }
                        continue;
                     }
                  }
                  continue loop4;
               }
            }
            else
            {
               this.§5!H§.graphics.lineTo(param1[_loc4_].x * this.§6!`§,param1[_loc4_].y * this.§6!`§);
            }
            _loc4_++;
         }
      }
      
      public function §2K§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
            do
            {
               this.§5!H§.graphics.drawCircle(param1.x * this.§6!`§,param1.y * this.§6!`§,param2 * this.§6!`§);
            }
            while(!(_loc4_ || this));
            
         }
      }
      
      public function §6"6§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,param4.color,this.§]p§);
         }
         loop0:
         while(true)
         {
            this.§5!H§.graphics.moveTo(0,0);
            loop1:
            while(true)
            {
               this.§5!H§.graphics.beginFill(param4.color,this.§;J§);
               while(true)
               {
                  this.§5!H§.graphics.drawCircle(param1.x * this.§6!`§,param1.y * this.§6!`§,param2 * this.§6!`§);
                  while(_loc6_)
                  {
                     continue loop1;
                     addr91:
                     if(_loc6_ || param3)
                     {
                        this.§5!H§.graphics.lineTo((param1.x + param3.x * param2) * this.§6!`§,(param1.y + param3.y * param2) * this.§6!`§);
                        addr98:
                        if(!(_loc5_ && param3))
                        {
                           continue loop0;
                        }
                        loop5:
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr91);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§5!H§.graphics.moveTo(param1.x * this.§6!`§,param1.y * this.§6!`§);
                                 continue loop5;
                              }
                              addr104:
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §?Z§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,param3.color,this.§]p§);
         }
         do
         {
            this.§5!H§.graphics.moveTo(param1.x * this.§6!`§,param1.y * this.§6!`§);
            do
            {
               this.§5!H§.graphics.lineTo(param2.x * this.§6!`§,param2.y * this.§6!`§);
            }
            while(_loc4_ && param2);
            
         }
         while(!_loc5_);
         
      }
      
      public function §8"$§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,16711680,this.§]p§);
            while(true)
            {
               this.§5!H§.graphics.moveTo(param1.position.x * this.§6!`§,param1.position.y * this.§6!`§);
               addr168:
               while(true)
               {
                  this.§5!H§.graphics.lineTo((param1.position.x + this.§5,§ * param1.R.col1.x) * this.§6!`§,(param1.position.y + this.§5,§ * param1.R.col1.y) * this.§6!`§);
                  addr66:
                  if(!(_loc2_ && param1))
                  {
                     return;
                     addr73:
                  }
               }
            }
            addr188:
         }
         loop2:
         while(true)
         {
            this.§5!H§.graphics.lineStyle(this.§&!e§,65280,this.§]p§);
            while(true)
            {
               if(_loc3_)
               {
                  this.§5!H§.graphics.moveTo(param1.position.x * this.§6!`§,param1.position.y * this.§6!`§);
                  while(_loc3_)
                  {
                     this.§5!H§.graphics.lineTo((param1.position.x + this.§5,§ * param1.R.col2.x) * this.§6!`§,(param1.position.y + this.§5,§ * param1.R.col2.y) * this.§6!`§);
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr66);
                  }
                  continue;
               }
               §§goto(addr188);
            }
            §§goto(addr168);
         }
         §§goto(addr73);
      }
   }
}
