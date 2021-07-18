package §,"R§
{
   import flash.display.BitmapData;
   
   public class §,!+§
   {
       
      
      private var §`[§:Vector.<§2!J§>;
      
      protected var § !k§:BitmapData;
      
      protected var mName:String;
      
      private var §<[§:Number = 1.0;
      
      public function §,!+§(param1:BitmapData)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§ !k§ = param1;
               while(_loc2_)
               {
                  this.§`[§ = new Vector.<§2!J§>();
                  if(_loc2_ || _loc3_)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function get §'"'§() : int
      {
         return this.§`[§.length;
      }
      
      public function get §#";§() : int
      {
         return this.§ !k§.width;
      }
      
      public function get § %§() : int
      {
         return this.§ !k§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§ !k§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<[§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§ !k§)
            {
               loop0:
               while(true)
               {
                  this.§ !k§.dispose();
                  while(true)
                  {
                     this.§ !k§ = null;
                     loop2:
                     while(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§`[§ = new Vector.<§2!J§>();
                           if(_loc2_ || this)
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
            §§goto(addr29);
         }
         §§goto(addr82);
      }
      
      public function §+"F§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !k§ = param1;
         }
      }
      
      public function §#E§(param1:§2!J§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§`[§.push(param1);
         }
      }
      
      public function §5!y§(param1:String) : §2!J§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() >= this.§`[§.length)
               {
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  loop1:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        _loc2_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               if(this.§`[§[_loc2_].mName == param1)
               {
                  §§goto(addr98);
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() + 1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
               }
            }
            §§goto(addr85);
         }
         if(_loc4_ || _loc2_)
         {
            return null;
         }
         addr98:
         return this.§`[§[_loc2_];
      }
      
      public function § "D§(param1:int) : §2!J§
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
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           return null;
                        }
                        continue loop0;
                     }
                     return this.§`[§[param1];
                     addr75:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() >= this.§`[§.length);
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc3_ || _loc2_))
               {
                  §§goto(addr92);
               }
               §§goto(addr75);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
   }
}
