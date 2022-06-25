package §?2§
{
   import flash.display.BitmapData;
   
   public class §]!'§
   {
       
      
      private var §"s§:Vector.<§=!L§>;
      
      protected var §#n§:BitmapData;
      
      protected var mName:String;
      
      private var §!+§:Number = 1.0;
      
      public function §]!'§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§#n§ = param1;
            do
            {
               this.§"s§ = new Vector.<§=!L§>();
            }
            while(!_loc3_);
            
         }
         while(_loc2_);
         
      }
      
      public function get §%9§() : int
      {
         return this.§"s§.length;
      }
      
      public function get §!'§() : int
      {
         return this.§#n§.width;
      }
      
      public function get §`!W§() : int
      {
         return this.§#n§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§#n§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!+§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§#n§)
            {
               loop0:
               while(true)
               {
                  this.§#n§.dispose();
                  while(true)
                  {
                     this.§#n§ = null;
                     loop2:
                     while(_loc1_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§"s§ = new Vector.<§=!L§>();
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
      
      public function §;P§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§#n§ = param1;
         }
      }
      
      public function §6!P§(param1:§=!L§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§"s§.push(param1);
         }
      }
      
      public function §4T§(param1:String) : §=!L§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() >= this.§"s§.length)
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
               else if(this.§"s§[_loc2_].mName == param1)
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
         return this.§"s§[_loc2_];
      }
      
      public function §%y§(param1:int) : §=!L§
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
                     return this.§"s§[param1];
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
