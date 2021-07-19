package §7!F§
{
   import §!!U§.§#"t§;
   import §&v§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8!W§
   {
       
      
      private var §^"R§:Texture;
      
      private var §<#_§:BitmapData;
      
      private var § !8§:Rectangle;
      
      private var §!I§:BitmapData;
      
      private var §%!<§:int;
      
      private var §=!C§:int;
      
      private var §8"2§:Number = 1.0;
      
      public function §8!W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^"R§ = param1;
            while(true)
            {
               this.§<#_§ = param2;
               addr74:
               while(!_loc7_)
               {
                  this.§ !8§ = param3.clone();
                  while(true)
                  {
                     this.§%!<§ = param4;
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
      
      public function get pivotX() : int
      {
         return this.§%!<§;
      }
      
      public function get pivotY() : int
      {
         return this.§=!C§;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^"R§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§^"R§.height);
         if(_loc1_ || _loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!this.§!I§)
            {
               do
               {
                  this.§!I§ = new BitmapData(this.§ !8§.width,this.§ !8§.height);
                  do
                  {
                     this.§!I§.copyPixels(this.§<#_§,this.§ !8§,new Point(0,0));
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
               addr56:
            }
            return this.§!I§;
         }
         §§goto(addr56);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§%!<§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!C§ = param1;
         }
      }
      
      public function § "P§(param1:Boolean = false, param2:Boolean = true) : §#"t§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§#"t§ = new §#"t§(this.texture,param1,param2);
         if(_loc6_)
         {
            _loc3_.pivotX = -this.pivotX;
            if(_loc6_)
            {
               _loc3_.pivotY = -this.pivotY;
               if(!_loc5_)
               {
                  _loc3_.scaleX = _loc3_.scaleY = this.scale;
               }
            }
         }
         return _loc3_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§^"R§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§^"R§);
                     addr105:
                     while(true)
                     {
                        §§pop().dispose();
                        addr106:
                        while(true)
                        {
                           this.§^"R§ = null;
                           addr82:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr103:
               }
               loop1:
               while(true)
               {
                  if(this.§!I§)
                  {
                     while(true)
                     {
                        this.§!I§.dispose();
                        while(true)
                        {
                           if(_loc1_)
                           {
                              this.§!I§ = null;
                              while(_loc1_ || this)
                              {
                              }
                              continue;
                              addr60:
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr106);
                     }
                     addr72:
                  }
                  while(true)
                  {
                     this.§<#_§ = null;
                     if(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc1_ || _loc1_)
                           {
                              break loop1;
                           }
                        }
                        else
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr106);
                     }
                     §§goto(addr60);
                  }
               }
               return;
            }
            §§goto(addr105);
         }
         §§goto(addr82);
      }
   }
}
