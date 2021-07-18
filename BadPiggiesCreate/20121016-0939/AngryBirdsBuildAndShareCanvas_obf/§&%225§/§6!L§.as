package §&"5§
{
   import §7R§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!L§
   {
       
      
      private var §+!m§:Texture;
      
      private var §"!S§:BitmapData;
      
      private var §0!q§:Rectangle;
      
      private var §&!@§:BitmapData;
      
      private var §>!v§:int;
      
      private var §>!J§:int;
      
      private var §?a§:Number = 1.0;
      
      public function §6!L§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            super();
            while(true)
            {
               this.§+!m§ = param1;
            }
            addr109:
         }
         while(true)
         {
            this.§"!S§ = param2;
            loop2:
            for(; !(_loc7_ && param3); if(!(_loc7_ && param2))
            {
               return;
            })
            {
               this.§0!q§ = param3.clone();
               loop3:
               while(true)
               {
                  this.§>!v§ = param4;
                  while(true)
                  {
                     this.§>!J§ = param5;
                     while(!_loc7_)
                     {
                        continue loop3;
                        this.§?a§ = param6;
                        if(_loc8_)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
      }
      
      public function get pivotX() : int
      {
         return this.§>!v§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>!J§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+!m§.width);
         if(!_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+!m§.height);
         if(_loc2_ || this)
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
            if(!this.§&!@§)
            {
               if(_loc2_ || this)
               {
                  this.§&!@§ = new BitmapData(this.§0!q§.width,this.§0!q§.height);
               }
               do
               {
                  this.§&!@§.copyPixels(this.§"!S§,this.§0!q§,new Point(0,0));
               }
               while(!(_loc2_ || _loc2_));
               
               addr55:
            }
            return this.§&!@§;
         }
         §§goto(addr55);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§>!v§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>!J§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+!m§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§+!m§);
                     addr94:
                     while(true)
                     {
                        §§pop().dispose();
                        addr95:
                        while(true)
                        {
                           this.§+!m§ = null;
                           addr76:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr92:
               }
               for(; this.§"!S§; §§goto(addr76))
               {
                  if(_loc2_ || _loc2_)
                  {
                     if(!_loc1_)
                     {
                        this.§"!S§.dispose();
                        while(true)
                        {
                           if(!(_loc1_ && this))
                           {
                              continue;
                           }
                        }
                        continue;
                        addr64:
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr64);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr71);
      }
   }
}
