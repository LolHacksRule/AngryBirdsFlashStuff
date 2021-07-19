package §9t§
{
   import §]!a§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §35§
   {
       
      
      private var §7Y§:Texture;
      
      private var §<!]§:BitmapData;
      
      private var §9!f§:Rectangle;
      
      private var §5&§:BitmapData;
      
      private var §4!=§:int;
      
      private var §>!D§:int;
      
      private var §#![§:Number = 1.0;
      
      public function §35§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            while(true)
            {
               this.§7Y§ = param1;
            }
            addr109:
         }
         while(true)
         {
            this.§<!]§ = param2;
            loop2:
            while(true)
            {
               this.§9!f§ = param3.clone();
               loop3:
               while(true)
               {
                  this.§4!=§ = param4;
                  while(true)
                  {
                     if(_loc8_)
                     {
                        if(!_loc8_)
                        {
                           break;
                        }
                        this.§>!D§ = param5;
                        continue loop3;
                     }
                     continue loop2;
                     addr35:
                     if(_loc8_ || param2)
                     {
                        return;
                     }
                  }
                  §§goto(addr109);
               }
            }
            if(!(_loc8_ || param2))
            {
               continue;
            }
            §§goto(addr71);
         }
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function get texture() : Texture
      {
         return this.§7Y§;
      }
      
      public function get pivotX() : int
      {
         return this.§4!=§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§>!D§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7Y§.width);
         if(!(_loc2_ && _loc2_))
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§7Y§.height);
         if(_loc1_ || _loc2_)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§5&§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§5&§ = new BitmapData(this.§9!f§.width,this.§9!f§.height);
                  addr61:
               }
               do
               {
                  this.§5&§.copyPixels(this.§<!]§,this.§9!f§,new Point(0,0));
               }
               while(!_loc2_);
               
            }
            return this.§5&§;
         }
         §§goto(addr61);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§4!=§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>!D§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§7Y§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§7Y§);
                     addr98:
                     while(true)
                     {
                        §§pop().dispose();
                        addr99:
                        loop6:
                        while(true)
                        {
                           this.§7Y§ = null;
                           addr73:
                           addr75:
                           while(!_loc1_)
                           {
                              continue loop6;
                           }
                        }
                     }
                     addr51:
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                     §§goto(addr24);
                  }
               }
               while(true)
               {
                  if(this.§<!]§)
                  {
                     loop2:
                     while(true)
                     {
                        this.§<!]§.dispose();
                        while(!_loc2_)
                        {
                           this.§<!]§ = null;
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           §§goto(addr51);
                        }
                        §§goto(addr73);
                     }
                  }
                  break;
                  §§goto(addr75);
               }
               addr24:
               return;
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
   }
}
