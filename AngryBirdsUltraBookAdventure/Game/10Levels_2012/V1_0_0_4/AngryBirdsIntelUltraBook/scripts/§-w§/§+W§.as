package §-w§
{
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §+W§
   {
       
      
      private var §[!5§:Texture;
      
      private var §4!R§:BitmapData;
      
      private var §3E§:Rectangle;
      
      private var §]!P§:BitmapData;
      
      private var §&5§:int;
      
      private var §1!O§:int;
      
      private var §'8§:Number = 1.0;
      
      public function §+W§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.§[!5§ = param1;
               while(true)
               {
                  this.§4!R§ = param2;
                  while(_loc8_)
                  {
                     this.§3E§ = param3.clone();
                     while(!(_loc7_ && param1))
                     {
                        continue loop0;
                        if(!(_loc7_ && this))
                        {
                           return;
                           addr64:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function get pivotX() : int
      {
         return this.§&5§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§1!O§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[!5§.width);
         if(_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[!5§.height);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.§]!P§)
            {
               do
               {
                  this.§]!P§ = new BitmapData(this.§3E§.width,this.§3E§.height);
                  do
                  {
                     this.§]!P§.copyPixels(this.§4!R§,this.§3E§,new Point(0,0));
                  }
                  while(!(_loc2_ || _loc1_));
                  
               }
               while(_loc1_);
               
               addr72:
            }
            return this.§]!P§;
         }
         §§goto(addr72);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&5§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1!O§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§[!5§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§[!5§);
                     addr99:
                     while(true)
                     {
                        §§pop().dispose();
                        addr100:
                        while(true)
                        {
                           this.§[!5§ = null;
                           addr91:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr97:
               }
               loop1:
               for(; this.§4!R§; §§goto(addr91))
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§4!R§.dispose();
                  }
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§4!R§ = null;
                        if(!(_loc2_ || _loc2_))
                        {
                           continue loop2;
                        }
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        if(_loc2_)
                        {
                           break loop1;
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr100);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr86);
      }
   }
}
