package §=`§
{
   import §?]§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#`§
   {
       
      
      private var §!=§:Texture;
      
      private var §%o§:BitmapData;
      
      private var §'!9§:Rectangle;
      
      private var §'!3§:BitmapData;
      
      private var §1!3§:int;
      
      private var §;V§:int;
      
      private var §?z§:Number = 1.0;
      
      public function §#`§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§!=§ = param1;
               loop1:
               for(; _loc8_ || param1; loop3:
               for(; !(_loc7_ && param2); while(_loc8_ || param2)
               {
                  this.§?z§ = param6;
                  if(_loc7_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr35);
               })
               {
                  this.§'!9§ = param3.clone();
                  while(true)
                  {
                     this.§1!3§ = param4;
                     while(!_loc7_)
                     {
                        this.§;V§ = param5;
                        continue loop3;
                        if(!(_loc7_ && param3))
                        {
                           return;
                        }
                     }
                  }
               })
               {
                  while(true)
                  {
                     this.§%o§ = param2;
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get texture() : Texture
      {
         return this.§!=§;
      }
      
      public function get pivotX() : int
      {
         return this.§1!3§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§;V§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§!=§.width);
         if(_loc2_ || _loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§!=§.height);
         if(_loc2_ || _loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!this.§'!3§)
            {
               loop0:
               while(true)
               {
                  this.§'!3§ = new BitmapData(this.§'!9§.width,this.§'!9§.height);
                  addr85:
                  while(true)
                  {
                     this.§'!3§.copyPixels(this.§%o§,this.§'!9§,new Point(0,0));
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr24);
               }
            }
            addr24:
            return this.§'!3§;
         }
         §§goto(addr85);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§1!3§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§;V§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!=§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§!=§);
                     addr104:
                     while(true)
                     {
                        §§pop().dispose();
                        loop5:
                        while(true)
                        {
                           this.§!=§ = null;
                           addr84:
                           addr91:
                           while(!(_loc2_ || _loc1_))
                           {
                              continue loop5;
                           }
                        }
                     }
                  }
                  addr102:
               }
               loop1:
               while(true)
               {
                  if(this.§%o§)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              this.§%o§.dispose();
                              addr77:
                              while(!_loc1_)
                              {
                                 this.§%o§ = null;
                                 if(_loc2_ || this)
                                 {
                                    break loop1;
                                 }
                              }
                              §§goto(addr102);
                           }
                           addr64:
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr77);
                  }
                  break;
                  §§goto(addr91);
               }
               return;
            }
            §§goto(addr104);
         }
         §§goto(addr64);
      }
   }
}
