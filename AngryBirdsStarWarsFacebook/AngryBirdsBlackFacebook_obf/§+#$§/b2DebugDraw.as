package §+#$§
{
   import §5"i§.b2Color;
   import §5"i§.b2internal;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import flash.display.Sprite;
   
   use namespace b2internal;
   
   public class b2DebugDraw
   {
      
      public static var §;#F§:uint = 1;
      
      public static var §'"l§:uint = 2;
      
      public static var §##Q§:uint = 4;
      
      public static var §]5§:uint = 8;
      
      public static var §>"v§:uint = 16;
      
      public static var §@# §:uint = 32;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;#F§ = 1;
            loop0:
            while(true)
            {
               §'"l§ = 2;
               do
               {
                  §##Q§ = 4;
                  loop2:
                  do
                  {
                     §]5§ = 8;
                     while(_loc2_)
                     {
                        §>"v§ = 16;
                        do
                        {
                           §@# § = 32;
                        }
                        while(!(_loc2_ || _loc2_));
                        
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(_loc1_);
                  
               }
               while(!(_loc2_ || b2DebugDraw));
               
            }
         }
      }
      
      private var §2u§:uint;
      
      b2internal var §3"k§:Sprite;
      
      private var §>!-§:Number = 1.0;
      
      private var §-`§:Number = 1.0;
      
      private var §9#I§:Number = 1.0;
      
      private var §##S§:Number = 1.0;
      
      private var §[#7§:Number = 1.0;
      
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
            this.§2u§ = 0;
         }
         while(_loc1_);
         
      }
      
      public function §="4§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2u§ = param1;
         }
      }
      
      public function §0"k§() : uint
      {
         return this.§2u§;
      }
      
      public function §%"%§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2u§ |= param1;
         }
      }
      
      public function §0#-§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§2u§ &= ~param1;
         }
      }
      
      public function §6!v§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§3"k§ = param1;
         }
      }
      
      public function §]#8§() : Sprite
      {
         return this.§3"k§;
      }
      
      public function §#!k§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>!-§ = param1;
         }
      }
      
      public function §`"`§() : Number
      {
         return this.§>!-§;
      }
      
      public function §[#$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§-`§ = param1;
         }
      }
      
      public function §+"[§() : Number
      {
         return this.§-`§;
      }
      
      public function §6#[§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§9#I§ = param1;
         }
      }
      
      public function §7!1§() : Number
      {
         return this.§9#I§;
      }
      
      public function §9!x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§##S§ = param1;
         }
      }
      
      public function §<"7§() : Number
      {
         return this.§##S§;
      }
      
      public function §3G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§[#7§ = param1;
         }
      }
      
      public function §%"N§() : Number
      {
         return this.§[#7§;
      }
      
      public function §2=§(param1:Array, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
            if(_loc5_)
            {
               addr35:
               this.§3"k§.graphics.moveTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
            }
            var _loc4_:int = 1;
            while(true)
            {
               if(_loc4_ >= param2)
               {
                  if(_loc5_ || param1)
                  {
                     if(!_loc6_)
                     {
                        this.§3"k§.graphics.lineTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
                     }
                     else
                     {
                        _loc4_++;
                        continue;
                        addr137:
                     }
                  }
                  if(_loc5_)
                  {
                     break;
                  }
                  continue;
               }
               this.§3"k§.graphics.lineTo(param1[_loc4_].x * this.§>!-§,param1[_loc4_].y * this.§>!-§);
               §§goto(addr137);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §3"<§(param1:Vector.<b2Vec2>, param2:int, param3:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  this.§3"k§.graphics.moveTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§3"k§.graphics.beginFill(param3.color,this.§##S§);
            if(!_loc6_)
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
         while(true)
         {
            if(_loc4_ >= param2)
            {
               if(!_loc6_)
               {
                  if(_loc6_)
                  {
                     continue;
                  }
                  this.§3"k§.graphics.lineTo(param1[0].x * this.§>!-§,param1[0].y * this.§>!-§);
               }
               while(!_loc6_)
               {
                  this.§3"k§.graphics.endFill();
                  if(_loc5_)
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§3"k§.graphics.lineTo(param1[_loc4_].x * this.§>!-§,param1[_loc4_].y * this.§>!-§);
            }
            _loc4_++;
         }
      }
      
      public function §]!_§(param1:b2Vec2, param2:Number, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
            do
            {
               this.§3"k§.graphics.drawCircle(param1.x * this.§>!-§,param1.y * this.§>!-§,param2 * this.§>!-§);
            }
            while(!_loc4_);
            
         }
      }
      
      public function §=! §(param1:b2Vec2, param2:Number, param3:b2Vec2, param4:b2Color) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,param4.color,this.§9#I§);
            while(true)
            {
               this.§3"k§.graphics.moveTo(0,0);
               while(true)
               {
                  this.§3"k§.graphics.beginFill(param4.color,this.§##S§);
                  loop2:
                  while(true)
                  {
                     this.§3"k§.graphics.drawCircle(param1.x * this.§>!-§,param1.y * this.§>!-§,param2 * this.§>!-§);
                     loop3:
                     while(true)
                     {
                        this.§3"k§.graphics.endFill();
                        loop4:
                        while(true)
                        {
                           this.§3"k§.graphics.moveTo(param1.x * this.§>!-§,param1.y * this.§>!-§);
                           loop5:
                           while(!_loc6_)
                           {
                              while(true)
                              {
                                 this.§3"k§.graphics.lineTo((param1.x + param3.x * param2) * this.§>!-§,(param1.y + param3.y * param2) * this.§>!-§);
                                 if(_loc5_ || param1)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function §,"B§(param1:b2Vec2, param2:b2Vec2, param3:b2Color) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,param3.color,this.§9#I§);
         }
         do
         {
            this.§3"k§.graphics.moveTo(param1.x * this.§>!-§,param1.y * this.§>!-§);
            do
            {
               this.§3"k§.graphics.lineTo(param2.x * this.§>!-§,param2.y * this.§>!-§);
            }
            while(!(_loc4_ || param1));
            
         }
         while(!(_loc4_ || this));
         
      }
      
      public function §?!G§(param1:b2Transform) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§3"k§.graphics.lineStyle(this.§-`§,16711680,this.§9#I§);
            while(true)
            {
               this.§3"k§.graphics.moveTo(param1.position.x * this.§>!-§,param1.position.y * this.§>!-§);
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  this.§3"k§.graphics.lineTo((param1.position.x + this.§[#7§ * param1.R.col1.x) * this.§>!-§,(param1.position.y + this.§[#7§ * param1.R.col1.y) * this.§>!-§);
                  loop2:
                  while(true)
                  {
                     this.§3"k§.graphics.lineStyle(this.§-`§,65280,this.§9#I§);
                     while(!(_loc3_ && param1))
                     {
                        this.§3"k§.graphics.moveTo(param1.position.x * this.§>!-§,param1.position.y * this.§>!-§);
                        do
                        {
                           this.§3"k§.graphics.lineTo((param1.position.x + this.§[#7§ * param1.R.col2.x) * this.§>!-§,(param1.position.y + this.§[#7§ * param1.R.col2.y) * this.§>!-§);
                        }
                        while(!_loc2_);
                        
                        if(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              break loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr142);
      }
   }
}
