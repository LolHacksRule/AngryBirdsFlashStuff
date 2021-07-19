package §=I§
{
   import flash.display.BitmapData;
   
   public class §-§
   {
       
      
      private var §76§:Vector.<§5!B§>;
      
      protected var §@x§:BitmapData;
      
      protected var mName:String;
      
      private var §6-§:Number = 1.0;
      
      public function §-§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§@x§ = param1;
               loop1:
               while(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§76§ = new Vector.<§5!B§>();
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
         §§goto(addr55);
      }
      
      public function get §5]§() : int
      {
         return this.§76§.length;
      }
      
      public function get §=c§() : int
      {
         return this.§@x§.width;
      }
      
      public function get get() : int
      {
         return this.§@x§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§@x§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§6-§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§@x§)
            {
               loop0:
               while(true)
               {
                  this.§@x§.dispose();
                  addr78:
                  loop3:
                  while(true)
                  {
                     this.§@x§ = null;
                     addr57:
                     addr71:
                     while(true)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           continue loop0;
                        }
                        continue loop3;
                     }
                     addr71:
                  }
               }
            }
            while(true)
            {
               this.§76§ = new Vector.<§5!B§>();
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr57);
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr78);
      }
      
      public function §63§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@x§ = param1;
         }
      }
      
      public function §0,§(param1:§5!B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§76§.push(param1);
         }
      }
      
      public function §;M§(param1:String) : §5!B§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(_loc3_ || this)
               {
                  if(§§pop() >= this.§76§.length)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc3_ || this))
                     {
                        while(true)
                        {
                           _loc2_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(this.§76§[_loc2_].mName == param1)
                  {
                     §§goto(addr102);
                  }
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr84);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr84);
         }
         if(_loc3_ || _loc3_)
         {
            return null;
         }
         addr102:
         return this.§76§[_loc2_];
      }
      
      public function §`T§(param1:int) : §5!B§
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
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr67);
                        }
                        if(!(_loc2_ && param1))
                        {
                           break;
                        }
                        §§push(§§pop() >= this.§76§.length);
                        continue loop0;
                        if(_loc3_ || this)
                        {
                           continue;
                        }
                        addr84:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr84:
                     }
                     return this.§76§[param1];
                  }
               }
               §§goto(addr84);
            }
         }
         addr67:
         return null;
      }
   }
}
