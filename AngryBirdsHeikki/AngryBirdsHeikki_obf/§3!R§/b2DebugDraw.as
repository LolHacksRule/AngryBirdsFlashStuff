package §3!R§
{
   import §6A§.b2Transform;
   import §6A§.b2Vec2;
   import §^P§.b2Color;
   import §^P§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §8!+§:uint = 1;
      
      public static var §;!@§:uint = 2;
      
      public static var §5<§:uint = 4;
      
      public static var §&!^§:uint = 8;
      
      public static var §-g§:uint = 16;
      
      public static var §`!"§:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §8!+§ = 1;
         }
         while(true)
         {
            §;!@§ = 2;
            loop1:
            while(true)
            {
               §5<§ = 4;
               loop2:
               while(true)
               {
                  §&!^§ = 8;
                  loop3:
                  do
                  {
                     §-g§ = 16;
                     while(!_loc1_)
                     {
                        continue loop1;
                        §`!"§ = 32;
                        if(!(_loc1_ && b2DebugDraw))
                        {
                           continue loop3;
                        }
                     }
                     continue loop2;
                  }
                  while(!(_loc2_ || b2DebugDraw));
                  
                  return;
               }
            }
            if(!(_loc2_ || b2DebugDraw))
            {
               continue;
            }
            §§goto(addr78);
         }
      }
      
      private var §^!@§:uint;
      
      b2internal var §`S§:Sprite;
      
      private var §;z§:Number = 1.0;
      
      private var §=l§:Number = 1.0;
      
      private var §"a§:Number = 1.0;
      
      private var §9%§:Number = 1.0;
      
      private var §9v§:Number = 1.0;
      
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
            this.§^!@§ = 0;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §=s§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!@§ = param1;
         }
      }
      
      public function §8c§() : uint
      {
         return this.§^!@§;
      }
      
      public function §"§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!@§ |= param1;
         }
      }
      
      public function §7!a§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^!@§ &= ~param1;
         }
      }
      
      public function §!6§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`S§ = param1;
         }
      }
      
      public function §"!H§() : Sprite
      {
         return this.§`S§;
      }
      
      public function §2!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;z§ = param1;
         }
      }
      
      public function §"7§() : Number
      {
         return this.§;z§;
      }
      
      public function §-m§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=l§ = param1;
         }
      }
      
      public function §+A§() : Number
      {
         return this.§=l§;
      }
      
      public function §1;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§"a§ = param1;
         }
      }
      
      public function §0!#§() : Number
      {
         return this.§"a§;
      }
      
      public function §!H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9%§ = param1;
         }
      }
      
      public function §!!b§() : Number
      {
         return this.§9%§;
      }
      
      public function §0!R§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9v§ = param1;
         }
      }
      
      public function § M§() : Number
      {
         return this.§9v§;
      }
      
      public function §^!E§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
            if(_loc5_)
            {
               this.§`S§.graphics.moveTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
            }
         }
         var _loc4_:int = 1;
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(_loc5_ || param1)
               {
                  if(!(_loc6_ && param3))
                  {
                     this.§`S§.graphics.lineTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
                  }
                  else
                  {
                     _loc4_++;
                     continue;
                     addr142:
                  }
               }
               if(_loc5_ || param2)
               {
                  break;
               }
               continue;
            }
            this.§`S§.graphics.lineTo(param1[_loc4_].x * this.§;z§,param1[_loc4_].y * this.§;z§);
            §§goto(addr142);
         }
      }
      
      public function §<@§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§`S§.graphics.moveTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
                  do
                  {
                     this.§`S§.graphics.beginFill(param3.color,this.§9%§);
                  }
                  while(!(_loc5_ || this));
                  
                  if(_loc5_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc4_:int = 1;
                     while(true)
                     {
                        if(_loc4_ >= param2)
                        {
                           if(!(_loc6_ && this))
                           {
                              this.§`S§.graphics.lineTo(param1[0].x * this.§;z§,param1[0].y * this.§;z§);
                           }
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                           }
                           continue;
                        }
                        this.§`S§.graphics.lineTo(param1[_loc4_].x * this.§;z§,param1[_loc4_].y * this.§;z§);
                        _loc4_++;
                     }
                     return;
                     addr37:
                  }
                  break;
               }
            }
         }
         §§goto(addr37);
      }
      
      public function §8%§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
         }
         do
         {
            this.§`S§.graphics.drawCircle(param1.x * this.§;z§,param1.y * this.§;z§,param2 * this.§;z§);
         }
         while(_loc5_ && param1);
         
      }
      
      public function §`!7§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,param4.color,this.§"a§);
            loop0:
            do
            {
               this.§`S§.graphics.moveTo(0,0);
               loop1:
               while(true)
               {
                  this.§`S§.graphics.beginFill(param4.color,this.§9%§);
                  do
                  {
                     this.§`S§.graphics.drawCircle(param1.x * this.§;z§,param1.y * this.§;z§,param2 * this.§;z§);
                     loop3:
                     do
                     {
                        this.§`S§.graphics.endFill();
                        while(_loc5_)
                        {
                           this.§`S§.graphics.moveTo(param1.x * this.§;z§,param1.y * this.§;z§);
                           do
                           {
                              this.§`S§.graphics.lineTo((param1.x + param3.x * param2) * this.§;z§,(param1.y + param3.y * param2) * this.§;z§);
                           }
                           while(!(_loc5_ || param3));
                           
                           if(_loc5_ || param1)
                           {
                              continue loop3;
                           }
                        }
                        continue loop1;
                     }
                     while(!(_loc5_ || param2));
                     
                  }
                  while(!(_loc5_ || param2));
                  
                  continue loop0;
               }
            }
            while(!_loc5_);
            
         }
      }
      
      public function §6[§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,param3.color,this.§"a§);
            while(true)
            {
               this.§`S§.graphics.moveTo(param1.x * this.§;z§,param1.y * this.§;z§);
               while(_loc4_)
               {
                  this.§`S§.graphics.lineTo(param2.x * this.§;z§,param2.y * this.§;z§);
                  if(_loc4_ || this)
                  {
                     return;
                     addr55:
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function §@w§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`S§.graphics.lineStyle(this.§=l§,16711680,this.§"a§);
         }
         loop0:
         while(true)
         {
            this.§`S§.graphics.moveTo(param1.position.x * this.§;z§,param1.position.y * this.§;z§);
            while(true)
            {
               this.§`S§.graphics.lineTo((param1.position.x + this.§9v§ * param1.R.col1.x) * this.§;z§,(param1.position.y + this.§9v§ * param1.R.col1.y) * this.§;z§);
               loop2:
               while(_loc3_ || param1)
               {
                  if(_loc3_)
                  {
                     this.§`S§.graphics.lineStyle(this.§=l§,65280,this.§"a§);
                     loop3:
                     do
                     {
                        this.§`S§.graphics.moveTo(param1.position.x * this.§;z§,param1.position.y * this.§;z§);
                        while(_loc3_)
                        {
                           this.§`S§.graphics.lineTo((param1.position.x + this.§9v§ * param1.R.col2.x) * this.§;z§,(param1.position.y + this.§9v§ * param1.R.col2.y) * this.§;z§);
                           if(_loc3_)
                           {
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                     while(_loc2_);
                     
                     return;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
