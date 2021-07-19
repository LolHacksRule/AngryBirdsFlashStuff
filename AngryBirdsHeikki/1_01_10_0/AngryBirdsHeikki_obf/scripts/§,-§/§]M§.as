package §,-§
{
   import flash.display.BitmapData;
   
   public class §]M§
   {
       
      
      private var §^U§:Vector.<§!>§>;
      
      protected var §=!=§:BitmapData;
      
      protected var mName:String;
      
      private var get:Number = 1.0;
      
      public function §]M§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§=!=§ = param1;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§^U§ = new Vector.<§!>§>();
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get §]m§() : int
      {
         return this.§^U§.length;
      }
      
      public function get §8!^§() : int
      {
         return this.§=!=§.width;
      }
      
      public function get §2"§() : int
      {
         return this.§=!=§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§=!=§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.get;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.get = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§=!=§)
            {
               if(_loc1_ || this)
               {
                  this.§=!=§.dispose();
               }
               while(true)
               {
                  this.§=!=§ = null;
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
            }
            addr23:
            §§goto(addr49);
         }
         addr49:
         while(true)
         {
            this.§^U§ = new Vector.<§!>§>();
            if(!(_loc2_ && _loc2_))
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
            continue loop1;
         }
      }
      
      public function §<]§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!=§ = param1;
         }
      }
      
      public function §,E§(param1:§!>§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§^U§.push(param1);
         }
      }
      
      public function §?&§(param1:String) : §!>§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || this)
            {
               if(!_loc3_)
               {
                  if(§§pop() >= this.§^U§.length)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc4_ || _loc2_))
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.§^U§[_loc2_].mName == param1)
                  {
                     §§goto(addr98);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        §§push(§§pop() + 1);
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr70);
         }
         if(!(_loc3_ && this))
         {
            return null;
         }
         addr98:
         return this.§^U§[_loc2_];
      }
      
      public function §'!B§(param1:int) : §!>§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr63);
                        }
                        §§push(§§pop() >= this.§^U§.length);
                        continue loop0;
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr88:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr88:
                     }
                     return this.§^U§[param1];
                  }
               }
               §§goto(addr88);
            }
         }
         addr63:
         return null;
      }
   }
}
