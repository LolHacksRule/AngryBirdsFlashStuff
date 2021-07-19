package §7U§
{
   import flash.display.BitmapData;
   
   public class §`L§
   {
       
      
      private var §%F§:Vector.<§@!4§>;
      
      protected var §<!j§:BitmapData;
      
      protected var mName:String;
      
      private var §7P§:Number = 1.0;
      
      public function §`L§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            if(!(_loc3_ && _loc2_))
            {
               this.§<!j§ = param1;
               if(_loc3_)
               {
               }
               §§goto(addr53);
            }
            this.§%F§ = new Vector.<§@!4§>();
         }
         addr53:
      }
      
      public function get §]X§() : int
      {
         return this.§%F§.length;
      }
      
      public function get §@@§() : int
      {
         return this.§<!j§.width;
      }
      
      public function get §%,§() : int
      {
         return this.§<!j§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§<!j§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7P§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§<!j§)
            {
               if(_loc1_)
               {
                  addr48:
                  this.§<!j§.dispose();
                  if(!(_loc2_ && this))
                  {
                     this.§<!j§ = null;
                     if(!(_loc2_ && this))
                     {
                        addr68:
                        this.§%F§ = new Vector.<§@!4§>();
                     }
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr48);
      }
      
      public function §import§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§<!j§ = param1;
         }
      }
      
      public function §"!P§(param1:§@!4§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%F§.push(param1);
         }
      }
      
      public function §@g§(param1:String) : §@!4§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§%F§.length)
            {
               if(this.§%F§[_loc2_].mName == param1)
               {
                  if(_loc4_ || _loc3_)
                  {
                     return this.§%F§[_loc2_];
                  }
               }
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_)
                  {
                     continue;
                  }
               }
               §§push(Number(§§pop()));
               if(_loc4_ || _loc3_)
               {
                  _loc2_ = §§pop();
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            return null;
         }
      }
      
      public function §#Q§(param1:int) : §@!4§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() < 0);
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && param1))
                     {
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr73);
               }
               addr65:
               §§pop();
               if(!_loc2_)
               {
                  §§goto(addr73);
               }
               return null;
            }
            addr73:
            if(param1 >= this.§%F§.length)
            {
               if(!_loc3_)
               {
                  §§goto(addr78);
               }
            }
            §§goto(addr78);
         }
         addr78:
         return this.§%F§[param1];
      }
   }
}
