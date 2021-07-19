package § `§
{
   import §]!B§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!=§
   {
       
      
      private var §if§:Texture;
      
      private var §,!>§:BitmapData;
      
      private var §'W§:Rectangle;
      
      private var §=r§:BitmapData;
      
      private var §?!Q§:int;
      
      private var §+9§:int;
      
      private var §1R§:Number = 1.0;
      
      public function §6!=§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§if§ = param1;
            loop1:
            while(true)
            {
               this.§,!>§ = param2;
               loop2:
               while(true)
               {
                  this.§'W§ = param3.clone();
                  loop3:
                  do
                  {
                     this.§?!Q§ = param4;
                     while(true)
                     {
                        this.§+9§ = param5;
                        while(_loc7_)
                        {
                           if(_loc7_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                           this.§1R§ = param6;
                           if(_loc7_ || param2)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(!_loc7_);
                  
                  continue loop0;
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§1R§;
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
      
      public function get pivotX() : int
      {
         return this.§?!Q§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§+9§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§if§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§if§.height);
         if(!_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§=r§)
            {
               do
               {
                  this.§=r§ = new BitmapData(this.§'W§.width,this.§'W§.height);
                  do
                  {
                     this.§=r§.copyPixels(this.§,!>§,this.§'W§,new Point(0,0));
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
               addr51:
            }
            return this.§=r§;
         }
         §§goto(addr51);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!Q§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+9§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§if§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§if§);
                     addr99:
                     while(true)
                     {
                        §§pop().dispose();
                        addr100:
                        while(true)
                        {
                           this.§if§ = null;
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                     addr37:
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
               while(this.§,!>§)
               {
                  loop2:
                  while(!(_loc1_ && this))
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           this.§,!>§.dispose();
                           do
                           {
                              this.§,!>§ = null;
                           }
                           while(_loc1_);
                           
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop2;
                           }
                           §§goto(addr37);
                        }
                        addr68:
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr76);
               }
               addr20:
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr68);
      }
   }
}
