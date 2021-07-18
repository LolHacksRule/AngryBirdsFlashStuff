package §&!"§
{
   import §9"§.b2Transform;
   import §9"§.b2Vec2;
   import §>!@§.b2Color;
   import §>!@§.b2internal;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §3Q§:uint = 1;
      
      public static var §5h§:uint = 2;
      
      public static var § Y§:uint = 4;
      
      public static var §&I§:uint = 8;
      
      public static var §`!1§:uint = 16;
      
      public static var §!%§:uint = 32;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3Q§ = 1;
            loop0:
            while(true)
            {
               §5h§ = 2;
               while(true)
               {
                  § Y§ = 4;
                  addr68:
                  while(_loc1_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §&I§ = 8;
            loop4:
            do
            {
               §`!1§ = 16;
               while(_loc1_)
               {
                  §!%§ = 32;
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop4;
                  }
               }
               §§goto(addr68);
            }
            while(!_loc1_);
            
            return;
         }
      }
      
      private var §&!H§:uint;
      
      b2internal var §42§:Sprite;
      
      private var §>!H§:Number = 1.0;
      
      private var §#L§:Number = 1.0;
      
      private var §2w§:Number = 1.0;
      
      private var §'!S§:Number = 1.0;
      
      private var §-!=§:Number = 1.0;
      
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
            this.§&!H§ = 0;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §for §(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!H§ = param1;
         }
      }
      
      public function §0T§() : uint
      {
         return this.§&!H§;
      }
      
      public function §6!V§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&!H§ |= param1;
         }
      }
      
      public function §5W§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!H§ &= ~param1;
         }
      }
      
      public function §8j§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§42§ = param1;
         }
      }
      
      public function §2!G§() : Sprite
      {
         return this.§42§;
      }
      
      public function §;p§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!H§ = param1;
         }
      }
      
      public function §>!1§() : Number
      {
         return this.§>!H§;
      }
      
      public function §5>§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#L§ = param1;
         }
      }
      
      public function §]!5§() : Number
      {
         return this.§#L§;
      }
      
      public function §#;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2w§ = param1;
         }
      }
      
      public function §'m§() : Number
      {
         return this.§2w§;
      }
      
      public function §]i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!S§ = param1;
         }
      }
      
      public function §,U§() : Number
      {
         return this.§'!S§;
      }
      
      public function § if§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-!=§ = param1;
         }
      }
      
      public function §6#§() : Number
      {
         return this.§-!=§;
      }
      
      public function §7b§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
            if(_loc6_ || param2)
            {
               addr36:
               this.§42§.graphics.moveTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
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
                  if(_loc6_ || param1)
                  {
                     this.§42§.graphics.lineTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
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
               this.§42§.graphics.lineTo(param1[_loc4_].x * this.§>!H§,param1[_loc4_].y * this.§>!H§);
               §§goto(addr143);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §6w§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         }
         while(true)
         {
            while(true)
            {
               this.§42§.graphics.moveTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
               do
               {
                  this.§42§.graphics.beginFill(param3.color,this.§'!S§);
               }
               while(!(_loc6_ || param2));
               
               if(!_loc6_)
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
                     if(_loc6_)
                     {
                        if(_loc5_)
                        {
                           continue;
                        }
                        this.§42§.graphics.lineTo(param1[0].x * this.§>!H§,param1[0].y * this.§>!H§);
                     }
                     while(!(_loc5_ && param3))
                     {
                        this.§42§.graphics.endFill();
                        if(!_loc5_)
                        {
                           return;
                        }
                     }
                  }
                  else
                  {
                     this.§42§.graphics.lineTo(param1[_loc4_].x * this.§>!H§,param1[_loc4_].y * this.§>!H§);
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      public function §&!!§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
         }
         do
         {
            this.§42§.graphics.drawCircle(param1.x * this.§>!H§,param1.y * this.§>!H§,param2 * this.§>!H§);
         }
         while(!(_loc4_ || param3));
         
      }
      
      public function §^2§(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§42§.graphics.lineStyle(this.§#L§,param4.color,this.§2w§);
            while(true)
            {
               this.§42§.graphics.moveTo(0,0);
               while(!(_loc6_ && param1))
               {
                  this.§42§.graphics.beginFill(param4.color,this.§'!S§);
                  while(true)
                  {
                     this.§42§.graphics.drawCircle(param1.x * this.§>!H§,param1.y * this.§>!H§,param2 * this.§>!H§);
                     while(true)
                     {
                        this.§42§.graphics.endFill();
                        §§goto(addr105);
                     }
                  }
               }
            }
         }
         addr105:
         while(true)
         {
            this.§42§.graphics.moveTo(param1.x * this.§>!H§,param1.y * this.§>!H§);
            do
            {
               this.§42§.graphics.lineTo((param1.x + param3.x * param2) * this.§>!H§,(param1.y + param3.y * param2) * this.§>!H§);
            }
            while(_loc6_ && param1);
            
            if(_loc5_)
            {
               if(_loc5_)
               {
                  continue loop2;
               }
               continue loop3;
            }
         }
         addr73:
      }
      
      public function §0C§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§42§.graphics.lineStyle(this.§#L§,param3.color,this.§2w§);
            do
            {
               this.§42§.graphics.moveTo(param1.x * this.§>!H§,param1.y * this.§>!H§);
               do
               {
                  this.§42§.graphics.lineTo(param2.x * this.§>!H§,param2.y * this.§>!H§);
               }
               while(!(_loc4_ || param3));
               
            }
            while(_loc5_ && this);
            
         }
      }
      
      public function §,!I§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§42§.graphics.lineStyle(this.§#L§,16711680,this.§2w§);
            while(true)
            {
               this.§42§.graphics.moveTo(param1.position.x * this.§>!H§,param1.position.y * this.§>!H§);
            }
            addr188:
         }
         do
         {
            this.§42§.graphics.lineTo((param1.position.x + this.§-!=§ * param1.R.col1.x) * this.§>!H§,(param1.position.y + this.§-!=§ * param1.R.col1.y) * this.§>!H§);
            loop2:
            do
            {
               this.§42§.graphics.lineStyle(this.§#L§,65280,this.§2w§);
               while(true)
               {
                  this.§42§.graphics.moveTo(param1.position.x * this.§>!H§,param1.position.y * this.§>!H§);
                  for(; _loc3_ || _loc2_; this.§42§.graphics.lineTo((param1.position.x + this.§-!=§ * param1.R.col2.x) * this.§>!H§,(param1.position.y + this.§-!=§ * param1.R.col2.y) * this.§>!H§),if(!_loc2_)
                  {
                     continue loop2;
                  })
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr188);
                  }
               }
            }
            while(!(_loc3_ || param1));
            
         }
         while(_loc2_);
         
      }
   }
}
