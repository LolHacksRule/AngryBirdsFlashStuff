package §>k§
{
   import flash.display.BitmapData;
   
   public class §`z§
   {
       
      
      private var § j§:Vector.<§`-§>;
      
      protected var §while§:BitmapData;
      
      protected var mName:String;
      
      private var §-_§:Number = 1.0;
      
      public function §`z§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            if(_loc2_)
            {
               this.§while§ = param1;
               if(!_loc3_)
               {
                  addr27:
                  this.§ j§ = new Vector.<§`-§>();
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function get §69§() : int
      {
         return this.§ j§.length;
      }
      
      public function get § set§() : int
      {
         return this.§while§.width;
      }
      
      public function get §4$§() : int
      {
         return this.§while§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§while§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-_§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§while§)
            {
               if(_loc2_)
               {
                  this.§while§.dispose();
                  if(_loc2_ || _loc2_)
                  {
                     this.§while§ = null;
                     if(_loc2_ || _loc1_)
                     {
                     }
                  }
               }
               §§goto(addr70);
            }
            this.§ j§ = new Vector.<§`-§>();
         }
         addr70:
      }
      
      public function §9T§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§while§ = param1;
         }
      }
      
      public function §8!=§(param1:§`-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§ j§.push(param1);
         }
      }
      
      public function §^L§(param1:String) : §`-§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§ j§.length)
            {
               if(this.§ j§[_loc2_].mName == param1)
               {
                  if(_loc4_)
                  {
                     break loop0;
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
               }
               continue loop0;
            }
            return null;
         }
         return this.§ j§[_loc2_];
      }
      
      public function §`Q§(param1:int) : §`-§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop() < 0);
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        §§goto(addr86);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     §§goto(addr86);
                  }
               }
               return this.§ j§[param1];
            }
            §§goto(addr74);
         }
         addr86:
         if(!(_loc2_ && _loc2_))
         {
            addr74:
            §§push(param1 >= this.§ j§.length);
         }
         return null;
      }
   }
}
