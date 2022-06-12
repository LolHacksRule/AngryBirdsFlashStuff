package §>i§
{
   import flash.display.BitmapData;
   
   public class §]y§
   {
       
      
      private var §!_§:Vector.<§^J§>;
      
      protected var §#R§:BitmapData;
      
      protected var mName:String;
      
      private var §[!q§:Number = 1.0;
      
      public function §]y§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§#R§ = param1;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.§!_§ = new Vector.<§^J§>();
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §#V§() : int
      {
         return this.§!_§.length;
      }
      
      public function get §!b§() : int
      {
         return this.§#R§.width;
      }
      
      public function get §6!n§() : int
      {
         return this.§#R§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#R§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§[!q§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§#R§)
            {
               loop0:
               while(true)
               {
                  this.§#R§.dispose();
                  while(true)
                  {
                     this.§#R§ = null;
                     addr67:
                     while(!(_loc2_ && this))
                     {
                        if(_loc1_)
                        {
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            while(true)
            {
               this.§!_§ = new Vector.<§^J§>();
               if(!(_loc2_ && this))
               {
                  break;
               }
               §§goto(addr67);
            }
         }
      }
      
      public function §8]§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§#R§ = param1;
         }
      }
      
      public function §+"=§(param1:§^J§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!_§.push(param1);
         }
      }
      
      public function §-X§(param1:String) : §^J§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() >= this.§!_§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     return null;
                  }
                  while(_loc3_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr69:
               }
               else if(this.§!_§[_loc2_].mName == param1)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr88);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr69);
            }
         }
         return this.§!_§[_loc2_];
      }
      
      public function §3G§(param1:int) : §^J§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               addr92:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr84);
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return this.§!_§[param1];
                     addr80:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr84:
         return null;
      }
   }
}
