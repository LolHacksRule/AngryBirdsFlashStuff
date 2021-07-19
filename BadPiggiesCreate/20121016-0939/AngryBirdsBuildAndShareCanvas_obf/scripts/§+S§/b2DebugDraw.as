package §+S§
{
   import §2"=§.b2Transform;
   import §2"=§.b2Vec2;
   import §=o§.b2Color;
   import §=o§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §9<§:uint = 1;
      
      public static var §=f§:uint = 2;
      
      public static var § " §:uint = 4;
      
      public static var §^!$§:uint = 8;
      
      public static var §4!=§:uint = 16;
      
      public static var §#V§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §9<§ = 1;
            loop0:
            while(true)
            {
               §=f§ = 2;
               while(true)
               {
                  § " § = 4;
                  loop3:
                  while(_loc2_ || _loc1_)
                  {
                     §4!=§ = 16;
                     while(!(_loc1_ && b2DebugDraw))
                     {
                        §#V§ = 32;
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                     while(true)
                     {
                        §^!$§ = 8;
                        continue loop3;
                        §§goto(addr54);
                     }
                     addr54:
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private var §2$§:uint;
      
      b2internal var §'y§:Sprite;
      
      private var §^s§:Number = 1.0;
      
      private var §`!M§:Number = 1.0;
      
      private var §;=§:Number = 1.0;
      
      private var §0u§:Number = 1.0;
      
      private var §,!7§:Number = 1.0;
      
      public function b2DebugDraw()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               this.§2$§ = 0;
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §8!O§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2$§ = param1;
         }
      }
      
      public function §8!0§() : uint
      {
         return this.§2$§;
      }
      
      public function §#!#§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§2$§ |= param1;
         }
      }
      
      public function §`!?§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§2$§ &= ~param1;
         }
      }
      
      public function §-i§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§'y§ = param1;
         }
      }
      
      public function §8x§() : Sprite
      {
         return this.§'y§;
      }
      
      public function § t§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^s§ = param1;
         }
      }
      
      public function §-"2§() : Number
      {
         return this.§^s§;
      }
      
      public function §3!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`!M§ = param1;
         }
      }
      
      public function §;!n§() : Number
      {
         return this.§`!M§;
      }
      
      public function §"+§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§;=§ = param1;
         }
      }
      
      public function §6!e§() : Number
      {
         return this.§;=§;
      }
      
      public function §<!a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§0u§ = param1;
         }
      }
      
      public function §[!§() : Number
      {
         return this.§0u§;
      }
      
      public function §^;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!7§ = param1;
         }
      }
      
      public function §#!_§() : Number
      {
         return this.§,!7§;
      }
      
      public function §^g§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
            if(!_loc6_)
            {
               addr35:
               this.§'y§.graphics.moveTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(!_loc6_)
                  {
                     this.§'y§.graphics.lineTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
                  }
                  if(_loc6_)
                  {
                     continue;
                  }
                  if(_loc5_ || param1)
                  {
                     break;
                  }
               }
               else
               {
                  this.§'y§.graphics.lineTo(param1[_loc4_].x * this.§^s§,param1[_loc4_].y * this.§^s§);
               }
               _loc4_++;
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §+r§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§'y§.graphics.moveTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
                  do
                  {
                     this.§'y§.graphics.beginFill(param3.color,this.§0u§);
                  }
                  while(!_loc5_);
                  
                  if(_loc6_ && param3)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:int = 1;
                  while(true)
                  {
                     if(_loc4_ >= param2)
                     {
                        while(!(_loc6_ && this))
                        {
                           this.§'y§.graphics.lineTo(param1[0].x * this.§^s§,param1[0].y * this.§^s§);
                           do
                           {
                              this.§'y§.graphics.endFill();
                           }
                           while(!_loc5_);
                           
                           if(!(_loc6_ && param1))
                           {
                              return;
                           }
                        }
                        loop7:
                        while(!(_loc5_ || this))
                        {
                           while(true)
                           {
                              _loc4_++;
                              continue loop7;
                           }
                        }
                        continue;
                     }
                     this.§'y§.graphics.lineTo(param1[_loc4_].x * this.§^s§,param1[_loc4_].y * this.§^s§);
                     §§goto(addr177);
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function §0!C§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
            do
            {
               this.§'y§.graphics.drawCircle(param1.x * this.§^s§,param1.y * this.§^s§,param2 * this.§^s§);
            }
            while(!_loc4_);
            
         }
      }
      
      public function §`!#§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,param4.color,this.§;=§);
            loop0:
            while(true)
            {
               this.§'y§.graphics.moveTo(0,0);
               addr156:
               while(true)
               {
                  this.§'y§.graphics.beginFill(param4.color,this.§0u§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§'y§.graphics.moveTo(param1.x * this.§^s§,param1.y * this.§^s§);
            §§goto(addr89);
         }
         §§goto(addr63);
      }
      
      public function §3!`§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,param3.color,this.§;=§);
         }
         while(true)
         {
            this.§'y§.graphics.moveTo(param1.x * this.§^s§,param1.y * this.§^s§);
            while(!(_loc4_ && param2))
            {
               this.§'y§.graphics.lineTo(param2.x * this.§^s§,param2.y * this.§^s§);
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
      }
      
      public function §,S§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'y§.graphics.lineStyle(this.§`!M§,16711680,this.§;=§);
            loop0:
            while(true)
            {
               this.§'y§.graphics.moveTo(param1.position.x * this.§^s§,param1.position.y * this.§^s§);
               loop1:
               while(true)
               {
                  this.§'y§.graphics.lineTo((param1.position.x + this.§,!7§ * param1.R.col1.x) * this.§^s§,(param1.position.y + this.§,!7§ * param1.R.col1.y) * this.§^s§);
                  loop2:
                  do
                  {
                     this.§'y§.graphics.lineStyle(this.§`!M§,65280,this.§;=§);
                     while(true)
                     {
                        this.§'y§.graphics.moveTo(param1.position.x * this.§^s§,param1.position.y * this.§^s§);
                        while(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 this.§'y§.graphics.lineTo((param1.position.x + this.§,!7§ * param1.R.col2.x) * this.§^s§,(param1.position.y + this.§,!7§ * param1.R.col2.y) * this.§^s§);
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(_loc3_);
                  
               }
            }
         }
      }
   }
}
