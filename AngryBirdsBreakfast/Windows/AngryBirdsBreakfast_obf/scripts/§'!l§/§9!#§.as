package §'!l§
{
   import flash.display.BitmapData;
   
   public class §9!#§
   {
       
      
      private var §<X§:Vector.<§5K§>;
      
      protected var §3!=§:BitmapData;
      
      protected var mName:String;
      
      private var §6!r§:Number = 1.0;
      
      public function §9!#§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§3!=§ = param1;
               while(_loc3_ || param1)
               {
                  this.§<X§ = new Vector.<§5K§>();
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public function get §^%§() : int
      {
         return this.§<X§.length;
      }
      
      public function get §`9§() : int
      {
         return this.§3!=§.width;
      }
      
      public function get §3c§() : int
      {
         return this.§3!=§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§3!=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§6!r§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§3!=§)
            {
               while(true)
               {
                  this.§3!=§.dispose();
                  while(true)
                  {
                     this.§3!=§ = null;
                     addr59:
                     loop2:
                     while(_loc1_ || _loc1_)
                     {
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  addr47:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  return;
                  addr54:
               }
            }
            while(true)
            {
               this.§<X§ = new Vector.<§5K§>();
               if(!_loc2_)
               {
                  §§goto(addr47);
               }
               §§goto(addr59);
            }
            §§goto(addr54);
         }
         §§goto(addr76);
      }
      
      public function §2P§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!=§ = param1;
         }
      }
      
      public function §?!t§(param1:§5K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§<X§.push(param1);
         }
      }
      
      public function §@u§(param1:String) : §5K§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(_loc3_)
               {
                  if(§§pop() >= this.§<X§.length)
                  {
                     if(!_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.§<X§[_loc2_].name == param1)
                  {
                     §§goto(addr87);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr64);
         }
         if(_loc3_)
         {
            return null;
         }
         addr87:
         return this.§<X§[_loc2_];
      }
      
      public function § k§(param1:int) : §5K§
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
               addr87:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!(_loc3_ || _loc2_))
                        {
                           break;
                        }
                        addr83:
                        if(!(_loc2_ && this))
                        {
                           return null;
                        }
                        continue loop0;
                     }
                     return this.§<X§[param1];
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
         §§goto(addr83);
      }
   }
}
