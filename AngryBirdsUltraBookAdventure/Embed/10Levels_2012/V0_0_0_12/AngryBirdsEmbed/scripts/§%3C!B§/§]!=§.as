package §<!B§
{
   import flash.display.BitmapData;
   
   public class §]!=§
   {
       
      
      private var §'B§:Vector.<§#z§>;
      
      protected var §>g§:BitmapData;
      
      protected var mName:String;
      
      private var §=!%§:Number = 1.0;
      
      public function §]!=§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               this.§>g§ = param1;
               if(_loc2_)
               {
               }
               §§goto(addr49);
            }
            this.§'B§ = new Vector.<§#z§>();
         }
         addr49:
      }
      
      public function get §9@§() : int
      {
         return this.§'B§.length;
      }
      
      public function get §4v§() : int
      {
         return this.§>g§.width;
      }
      
      public function get §8?§() : int
      {
         return this.§>g§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§>g§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!%§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§>g§)
            {
               if(!_loc2_)
               {
                  addr33:
                  this.§>g§.dispose();
                  if(!_loc2_)
                  {
                     this.§>g§ = null;
                     if(_loc1_ || _loc1_)
                     {
                        addr48:
                        this.§'B§ = new Vector.<§#z§>();
                     }
                     return;
                  }
               }
            }
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      public function §`Z§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>g§ = param1;
         }
      }
      
      public function §]+§(param1:§#z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'B§.push(param1);
         }
      }
      
      public function §%@§(param1:String) : §#z§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§'B§.length)
            {
               if(this.§'B§[_loc2_].mName == param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return this.§'B§[_loc2_];
                  }
               }
               §§push(_loc2_);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + 1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  continue;
               }
               continue loop0;
            }
            addr95:
            return null;
         }
      }
      
      public function §^!B§(param1:int) : §#z§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop() < 0);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           addr78:
                           if(param1 >= this.§'B§.length)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr81);
                              }
                           }
                        }
                        return this.§'B§[param1];
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         addr81:
         return null;
      }
   }
}
