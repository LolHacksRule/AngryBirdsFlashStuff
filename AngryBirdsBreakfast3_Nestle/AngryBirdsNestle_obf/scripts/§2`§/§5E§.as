package §2`§
{
   import §3!J§.§4!2§;
   import §=!4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5E§
   {
       
      
      private var §>"5§:Texture;
      
      private var §@!`§:BitmapData;
      
      private var § G§:Rectangle;
      
      private var §!H§:BitmapData;
      
      private var §6!f§:int;
      
      private var §<!C§:int;
      
      private var §2c§:Number = 1.0;
      
      public function §5E§(param1:Texture, param2:BitmapData, param3:Rectangle, param4:int, param5:int, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§>"5§ = param1;
            while(true)
            {
               this.§@!`§ = param2;
               loop2:
               while(!(_loc8_ && param2))
               {
                  this.§ G§ = param3.clone();
                  while(true)
                  {
                     this.§6!f§ = param4;
                     addr53:
                     while(!_loc8_)
                     {
                        continue loop0;
                     }
                     continue loop2;
                  }
               }
            }
         }
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
      }
      
      public function get pivotX() : int
      {
         return this.§6!f§ * this.scale;
      }
      
      public function get pivotY() : int
      {
         return this.§<!C§ * this.scale;
      }
      
      public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§>"5§.width);
         if(_loc1_ || this)
         {
            return §§pop() * this.scale;
         }
      }
      
      public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>"5§.height);
         if(_loc2_)
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
            if(!this.§!H§)
            {
               do
               {
                  this.§!H§ = new BitmapData(this.§ G§.width,this.§ G§.height);
                  do
                  {
                     this.§!H§.copyPixels(this.§@!`§,this.§ G§,new Point(0,0));
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
               addr55:
            }
            return this.§!H§;
         }
         §§goto(addr55);
      }
      
      public function set pivotX(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6!f§ = param1;
         }
      }
      
      public function set pivotY(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!C§ = param1;
         }
      }
      
      public function § !l§(param1:Boolean = false, param2:Boolean = true) : §4!2§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§4!2§ = new §4!2§(this.texture,param1,param2);
         if(!(_loc6_ && _loc3_))
         {
            _loc3_.pivotX = -this.pivotX;
            if(_loc5_)
            {
               _loc3_.pivotY = -this.pivotY;
               if(_loc5_ || _loc3_)
               {
                  _loc3_.scaleX = _loc3_.scaleY = this.scale;
                  addr60:
               }
               return _loc3_;
            }
         }
         §§goto(addr60);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>"5§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§>"5§);
                     addr99:
                     while(true)
                     {
                        §§pop().dispose();
                        addr100:
                        while(true)
                        {
                           this.§>"5§ = null;
                           continue loop0;
                        }
                     }
                  }
               }
               loop1:
               while(true)
               {
                  if(this.§@!`§)
                  {
                     if(!_loc1_)
                     {
                        this.§@!`§.dispose();
                     }
                     while(_loc2_)
                     {
                        this.§@!`§ = null;
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        if(!(_loc1_ && _loc1_))
                        {
                           break loop1;
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr100);
                  }
                  break;
                  §§goto(addr81);
               }
               return;
            }
            §§goto(addr99);
         }
         §§goto(addr81);
      }
   }
}
