package §1n§
{
   import §[P§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1D§
   {
       
      
      private var §<i§:Texture;
      
      private var §[,§:BitmapData;
      
      private var §?Q§:Rectangle;
      
      private var §"O§:BitmapData;
      
      private var §3e§:int;
      
      private var §>9§:int;
      
      private var §,&§:Number = 1.0;
      
      public function §1D§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<i§ = param1;
               while(true)
               {
                  this.§[,§ = param2;
                  while(!(_loc7_ && param2))
                  {
                     this.§?Q§ = param3.clone();
                     loop3:
                     while(!(_loc7_ && param1))
                     {
                        while(true)
                        {
                           this.§3e§ = param4;
                           do
                           {
                              this.§>9§ = param5;
                              this.§,&§ = param6;
                           }
                           while(!(_loc8_ || param1));
                           
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
      
      public function get pivotX() : int
      {
         return this.§3e§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>9§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<i§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<i§.height);
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
            if(!this.§"O§)
            {
               if(_loc1_)
               {
                  this.§"O§ = new BitmapData(this.§?Q§.width,this.§?Q§.height);
                  do
                  {
                     this.§"O§.copyPixels(this.§[,§,this.§?Q§,new Point(0,0));
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  addr85:
               }
               §§goto(addr85);
            }
            return this.§"O§;
         }
         §§goto(addr85);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3e§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>9§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<i§);
         if(!_loc1_)
         {
            if(§§pop())
            {
               while(true)
               {
                  §§push(this.§<i§);
                  addr74:
                  while(true)
                  {
                     §§pop().dispose();
                     this.§<i§ = null;
                  }
                  addr51:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  this.§[,§.dispose();
                  this.§[,§ = null;
                  §§goto(addr18);
               }
            }
            while(this.§[,§)
            {
               §§goto(addr51);
            }
            addr18:
            return;
         }
         §§goto(addr74);
      }
   }
}
