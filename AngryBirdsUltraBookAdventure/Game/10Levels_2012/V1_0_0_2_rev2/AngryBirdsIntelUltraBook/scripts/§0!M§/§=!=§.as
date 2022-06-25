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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§'!N§ = param1;
            do
            {
               this.§,!a§ = new Vector.<§,'§>();
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'8§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§'!N§)
            {
               loop0:
               while(true)
               {
                  this.§'!N§.dispose();
                  while(true)
                  {
                     this.§'!N§ = null;
                     loop2:
                     while(_loc1_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§,!a§ = new Vector.<§,'§>();
                           if(!(_loc2_ && this))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr23);
         }
         §§goto(addr71);
      }
      
      public function §0g§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!N§ = param1;
         }
      }
      
      public function §5!w§(param1:§,'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§,!a§.push(param1);
         }
      }
      
      public function §-v§(param1:String) : §,'§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() >= this.§,!a§.length)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     if(_loc4_ || param1)
                     {
                        return null;
                     }
                     break;
                  }
               }
               else if(this.§,!a§[_loc2_].mName == param1)
               {
                  break;
               }
               §§push(_loc2_);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_ || param1)
                  {
                  }
                  addr82:
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(Number(§§pop()));
            }
            §§goto(addr82);
         }
         return this.§,!a§[_loc2_];
      }
      
      public function § s§(param1:int) : §,'§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 0);
               addr91:
               while(true)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr87:
                        if(_loc2_ || _loc3_)
                        {
                           return null;
                        }
                        continue loop0;
                     }
                     return this.§,!a§[param1];
                     addr74:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
   }
}
