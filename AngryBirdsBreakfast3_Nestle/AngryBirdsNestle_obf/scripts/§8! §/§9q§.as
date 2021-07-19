package §8! §
{
   import flash.display.BitmapData;
   
   public class §9q§
   {
       
      
      private var §"U§:Vector.<§^"-§>;
      
      protected var §49§:BitmapData;
      
      protected var mName:String;
      
      private var §2c§:Number = 1.0;
      
      public function §9q§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§49§ = param1;
               §§goto(addr75);
            }
         }
         addr75:
         while(true)
         {
            this.§"U§ = new Vector.<§^"-§>();
            if(_loc3_ || param1)
            {
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §!,§() : int
      {
         return this.§"U§.length;
      }
      
      public function get §4K§() : int
      {
         return this.§49§.width;
      }
      
      public function get §"9§() : int
      {
         return this.§49§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§49§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2c§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.§49§)
            {
               loop3:
               while(true)
               {
                  this.§49§.dispose();
                  addr79:
                  while(true)
                  {
                     this.§49§ = null;
                     addr60:
                     addr72:
                     while(_loc1_)
                     {
                        continue loop3;
                     }
                     continue loop3;
                  }
               }
               addr76:
            }
            while(true)
            {
               this.§"U§ = new Vector.<§^"-§>();
               if(_loc2_)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr79);
               }
               §§goto(addr60);
               §§goto(addr72);
            }
            return;
         }
         §§goto(addr76);
      }
      
      public function §!!+§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§49§ = param1;
         }
      }
      
      public function §-"#§(param1:§^"-§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"U§.push(param1);
         }
      }
      
      public function §8e§(param1:String) : §^"-§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         do
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               if(!_loc4_)
               {
                  if(§§pop() >= this.§"U§.length)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(_loc3_)
                     {
                        return null;
                     }
                  }
                  else if(this.§"U§[_loc2_].name == param1)
                  {
                     break;
                  }
                  addr64:
                  §§push(_loc2_);
                  if(_loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr64);
         }
         while(_loc3_ || this);
         
         return this.§"U§[_loc2_];
      }
      
      public function §0@§(param1:int) : §^"-§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               addr82:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§goto(addr64);
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return this.§"U§[param1];
                     addr55:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr64:
         return null;
      }
   }
}
