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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param3))
         {
            super();
            while(true)
            {
               this.§!=§ = param1;
               loop1:
               while(!(_loc8_ && param3))
               {
                  this.§%o§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§'!9§ = param3.clone();
                     addr88:
                     while(true)
                     {
                        this.§1!3§ = param4;
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     if(!(_loc8_ && param1))
                     {
                        continue;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr82);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!=§.width);
         if(_loc1_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!=§.height);
         if(!(_loc2_ && this))
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
            if(!this.§'!3§)
            {
               do
               {
                  this.§'!3§ = new BitmapData(this.§'!9§.width,this.§'!9§.height);
                  do
                  {
                     this.§'!3§.copyPixels(this.§%o§,this.§'!9§,new Point(0,0));
                  }
                  while(_loc1_ && this);
                  
               }
               while(!(_loc2_ || this));
               
               addr76:
            }
            return this.§'!3§;
         }
         §§goto(addr76);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§1!3§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§;V§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!=§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§!=§);
                     addr89:
                     while(true)
                     {
                        §§pop().dispose();
                        loop5:
                        while(true)
                        {
                           this.§!=§ = null;
                           addr72:
                           addr81:
                           while(true)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               loop1:
               while(true)
               {
                  if(this.§%o§)
                  {
                     loop2:
                     while(!(_loc1_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§%o§.dispose();
                           do
                           {
                              this.§%o§ = null;
                           }
                           while(!_loc2_);
                           
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr72);
                  }
                  break;
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr89);
         }
         §§goto(addr64);
      }
   }
}
