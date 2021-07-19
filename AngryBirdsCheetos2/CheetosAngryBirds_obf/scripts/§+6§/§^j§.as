package §+6§
{
   import flash.display.BitmapData;
   
   public class §^j§
   {
       
      
      private var §8j§:Vector.<§=!`§>;
      
      protected var §^4§:BitmapData;
      
      protected var mName:String;
      
      private var §#![§:Number = 1.0;
      
      public function §^j§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               this.§^4§ = param1;
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     this.§8j§ = new Vector.<§=!`§>();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function get §`!X§() : int
      {
         return this.§8j§.length;
      }
      
      public function get §=@§() : int
      {
         return this.§^4§.width;
      }
      
      public function get §6>§() : int
      {
         return this.§^4§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§^4§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#![§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§^4§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§^4§.dispose();
                  addr78:
                  while(true)
                  {
                     this.§^4§ = null;
                     while(true)
                     {
                     }
                  }
                  addr78:
               }
               §§goto(addr78);
            }
            do
            {
               this.§8j§ = new Vector.<§=!`§>();
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
            }
            while(!_loc1_);
            
            return;
         }
         §§goto(addr78);
      }
      
      public function §;"§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^4§ = param1;
         }
      }
      
      public function §+!"§(param1:§=!`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8j§.push(param1);
         }
      }
      
      public function §4u§(param1:String) : §=!`§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(§§pop() >= this.§8j§.length)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     return null;
                  }
                  addr87:
               }
               else if(this.§8j§[_loc2_].mName == param1)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr87);
               }
               §§push(_loc2_);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc2_ = §§pop();
         }
         return this.§8j§[_loc2_];
      }
      
      public function §@9§(param1:int) : §=!`§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           return null;
                        }
                        if(_loc2_ || _loc3_)
                        {
                           addr80:
                           break;
                        }
                        §§push(§§pop() >= this.§8j§.length);
                        continue loop0;
                        if(!(_loc3_ && _loc3_))
                        {
                           continue;
                        }
                        addr103:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr103:
                     }
                     return this.§8j§[param1];
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr80);
      }
   }
}
