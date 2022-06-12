package §6!D§
{
   import §0!R§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!K§
   {
       
      
      private var §&M§:Texture;
      
      private var §,!a§:BitmapData;
      
      private var §5""§:Rectangle;
      
      private var §#!b§:BitmapData;
      
      private var §4!^§:int;
      
      private var §'?§:int;
      
      private var §[!q§:Number = 1.0;
      
      public function §3!K§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§&M§ = param1;
               addr105:
               while(true)
               {
                  this.§,!a§ = param2;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§4!^§ = param4;
            §§goto(addr80);
         }
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function get texture() : Texture
      {
         return this.§&M§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!^§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§'?§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&M§.width);
         if(_loc1_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&M§.height);
         if(_loc1_)
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
            if(!this.§#!b§)
            {
               if(_loc1_ || _loc1_)
               {
                  addr80:
                  this.§#!b§ = new BitmapData(this.§5""§.width,this.§5""§.height);
               }
               do
               {
                  this.§#!b§.copyPixels(this.§,!a§,this.§5""§,new Point(0,0));
               }
               while(_loc2_ && this);
               
            }
            return this.§#!b§;
         }
         §§goto(addr80);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4!^§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'?§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§&M§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§&M§);
                     addr94:
                     while(true)
                     {
                        §§pop().dispose();
                        addr95:
                        while(true)
                        {
                           this.§&M§ = null;
                           addr86:
                           while(true)
                           {
                           }
                        }
                     }
                     addr74:
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§,!a§ = null;
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr25);
                     }
                  }
               }
               for(; this.§,!a§; §§goto(addr86))
               {
                  if(!_loc1_)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        this.§,!a§.dispose();
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr74);
               }
               addr25:
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr95);
      }
   }
}
