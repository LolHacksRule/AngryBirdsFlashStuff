package §,!7§
{
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § H§
   {
       
      
      private var §>!S§:Texture;
      
      private var §1z§:BitmapData;
      
      private var §,>§:Rectangle;
      
      private var §5!O§:BitmapData;
      
      private var §1l§:int;
      
      private var §%!N§:int;
      
      private var §?C§:Number = 1.0;
      
      public function § H§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§>!S§ = param1;
               loop1:
               while(true)
               {
                  this.§1z§ = param2;
                  addr70:
                  if(!(_loc7_ || param1))
                  {
                     continue;
                  }
                  this.§%!N§ = param5;
                  loop5:
                  while(true)
                  {
                     if(_loc7_ || this)
                     {
                        addr56:
                        if(!(_loc7_ || this))
                        {
                           break;
                        }
                        continue;
                     }
                     addr68:
                     while(true)
                     {
                        if(_loc8_)
                        {
                           continue loop0;
                        }
                        §§goto(addr70);
                        continue loop5;
                     }
                     continue loop1;
                  }
                  while(true)
                  {
                     this.§,>§ = param3.clone();
                     continue loop0;
                     §§goto(addr56);
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function get texture() : Texture
      {
         return this.§>!S§;
      }
      
      public function get pivotX() : int
      {
         return this.§1l§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§%!N§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>!S§.width);
         if(_loc2_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>!S§.height);
         if(!_loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(!this.§5!O§)
            {
               loop0:
               while(true)
               {
                  this.§5!O§ = new BitmapData(this.§,>§.width,this.§,>§.height);
                  addr82:
                  while(true)
                  {
                     this.§5!O§.copyPixels(this.§1z§,this.§,>§,new Point(0,0));
                     if(_loc1_)
                     {
                        if(_loc1_)
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
            return this.§5!O§;
         }
         §§goto(addr82);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§1l§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!N§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§>!S§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§>!S§);
                  }
               }
            }
            while(true)
            {
               §§pop().dispose();
               §§goto(addr95);
            }
         }
         §§goto(addr68);
      }
   }
}
