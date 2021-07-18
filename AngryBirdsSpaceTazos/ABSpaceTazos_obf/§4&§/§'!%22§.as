package §4&§
{
   import §7!8§.§`y§;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!"§
   {
       
      
      private var §2-§:Texture;
      
      private var §%!C§:BitmapData;
      
      private var §8y§:Rectangle;
      
      private var §!Q§:BitmapData;
      
      private var §;o§:int;
      
      private var §+!H§:int;
      
      private var §=T§:Number = 1.0;
      
      public function §'!"§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super();
         }
         while(true)
         {
            this.§2-§ = param1;
            loop1:
            while(_loc8_)
            {
               this.§%!C§ = param2;
               loop2:
               do
               {
                  this.§8y§ = param3.clone();
                  while(true)
                  {
                     this.§;o§ = param4;
                     loop4:
                     while(!(_loc7_ && this))
                     {
                        this.§+!H§ = param5;
                        while(_loc8_)
                        {
                           this.§=T§ = param6;
                           if(_loc8_ || param2)
                           {
                              if(!(_loc7_ && param2))
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(_loc7_);
               
               return;
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
      }
      
      public function get pivotX() : int
      {
         return this.§;o§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+!H§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§2-§.width);
         if(_loc2_ || _loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§2-§.height);
         if(_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§!Q§)
            {
               if(!_loc1_)
               {
                  this.§!Q§ = new BitmapData(this.§8y§.width,this.§8y§.height);
               }
               do
               {
                  this.§!Q§.copyPixels(this.§%!C§,this.§8y§,new Point(0,0));
               }
               while(_loc1_ && _loc1_);
               
               addr55:
            }
            return this.§!Q§;
         }
         §§goto(addr55);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§;o§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!H§ = param1;
         }
      }
      
      public function §;K§(param1:Boolean = false, param2:Boolean = true) : §`y§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§`y§ = new §`y§(this.texture,param1,param2);
         if(!(_loc6_ && param2))
         {
            _loc3_.pivotX = -this.pivotX;
            if(!(_loc6_ && this))
            {
               _loc3_.pivotY = -this.pivotY;
               if(_loc6_ && param2)
               {
               }
               §§goto(addr85);
            }
            _loc3_.scaleX = _loc3_.scaleY = this.scale;
         }
         addr85:
         return _loc3_;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2-§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§2-§);
                     addr94:
                     while(true)
                     {
                        §§pop().dispose();
                        addr95:
                        addr76:
                        loop4:
                        while(true)
                        {
                           this.§2-§ = null;
                           addr74:
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           this.§%!C§ = null;
                           if(!(_loc2_ || this))
                           {
                              continue loop3;
                           }
                           if(!_loc1_)
                           {
                              if(!(_loc2_ || _loc1_))
                              {
                                 §§goto(addr74);
                              }
                              §§goto(addr20);
                           }
                           while(true)
                           {
                              this.§%!C§.dispose();
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr95);
                  }
               }
               while(true)
               {
                  if(this.§%!C§)
                  {
                     §§goto(addr59);
                  }
                  break;
                  §§goto(addr76);
               }
               addr20:
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr69);
      }
   }
}
