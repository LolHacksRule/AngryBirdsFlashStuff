package §<=§
{
   import flash.display.BitmapData;
   
   public class §66§
   {
       
      
      private var §8B§:Vector.<§#8§>;
      
      protected var §&q§:BitmapData;
      
      protected var mName:String;
      
      private var §]H§:Number = 1.0;
      
      public function §66§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               this.§&q§ = param1;
               if(!(_loc2_ && param1))
               {
                  addr48:
                  this.§8B§ = new Vector.<§#8§>();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function get §<q§() : int
      {
         return this.§8B§.length;
      }
      
      public function get §`t§() : int
      {
         return this.§&q§.width;
      }
      
      public function get §,1§() : int
      {
         return this.§&q§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§&q§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§]H§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§&q§)
            {
               if(!_loc2_)
               {
                  §§goto(addr38);
               }
            }
            §§goto(addr48);
         }
         addr38:
         this.§&q§.dispose();
         if(!_loc2_)
         {
            this.§&q§ = null;
            if(!_loc2_)
            {
               addr48:
               this.§8B§ = new Vector.<§#8§>();
            }
         }
      }
      
      public function §"X§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§&q§ = param1;
         }
      }
      
      public function §'3§(param1:§#8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§8B§.push(param1);
         }
      }
      
      public function §>7§(param1:String) : §#8§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§8B§.length)
            {
               if(this.§8B§[_loc2_].mName == param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return this.§8B§[_loc2_];
                  }
               }
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
               }
               §§push(Number(§§pop()));
               if(!(_loc3_ && _loc3_))
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
      
      public function §1@§(param1:int) : §#8§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               §§push(§§pop() < 0);
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr49:
                        §§pop();
                        §§goto(addr65);
                     }
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr65:
                        if(_loc2_ || _loc3_)
                        {
                           addr58:
                           §§push(param1 >= this.§8B§.length);
                        }
                        return null;
                     }
                  }
                  return this.§8B§[param1];
               }
               §§goto(addr49);
            }
            §§goto(addr58);
         }
         §§goto(addr49);
      }
   }
}
