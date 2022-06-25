package §0!M§
{
   import flash.display.BitmapData;
   
   public class §=!=§
   {
       
      
      private var §,!a§:Vector.<§,'§>;
      
      protected var §'!N§:BitmapData;
      
      protected var mName:String;
      
      private var §'8§:Number = 1.0;
      
      public function §=!=§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            do
            {
               this.§'!N§ = param1;
               do
               {
                  this.§,!a§ = new Vector.<§,'§>();
               }
               while(_loc3_);
               
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function get §1!]§() : int
      {
         return this.§,!a§.length;
      }
      
      public function get §+1§() : int
      {
         return this.§'!N§.width;
      }
      
      public function get §#!b§() : int
      {
         return this.§'!N§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§'!N§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'8§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§'!N§)
            {
               loop0:
               while(true)
               {
                  this.§'!N§.dispose();
                  addr84:
                  while(true)
                  {
                     this.§'!N§ = null;
                     continue loop0;
                  }
               }
            }
            §§goto(addr39);
         }
         §§goto(addr65);
      }
      
      public function §0g§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'!N§ = param1;
         }
      }
      
      public function §5!w§(param1:§,'§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§,!a§.push(param1);
         }
      }
      
      public function §-v§(param1:String) : §,'§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() >= this.§,!a§.length)
               {
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     return null;
                  }
                  addr107:
               }
               else if(this.§,!a§[_loc2_].mName == param1)
               {
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  §§goto(addr107);
               }
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            _loc2_ = §§pop();
         }
         return this.§,!a§[_loc2_];
      }
      
      public function § s§(param1:int) : §,'§
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
               addr77:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr69);
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     return this.§,!a§[param1];
                     addr65:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         addr69:
         return null;
      }
   }
}
