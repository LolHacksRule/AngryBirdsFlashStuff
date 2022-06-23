package §0!5§
{
   import flash.display.BitmapData;
   
   public class §#!8§
   {
       
      
      private var §`R§:Vector.<§5!D§>;
      
      protected var §+l§:BitmapData;
      
      protected var mName:String;
      
      private var §!!%§:Number = 1.0;
      
      public function §#!8§(param1:BitmapData)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            if(!(_loc2_ && _loc3_))
            {
               this.§+l§ = param1;
               if(_loc2_)
               {
               }
               §§goto(addr49);
            }
            this.§`R§ = new Vector.<§5!D§>();
         }
         addr49:
      }
      
      public function get §2>§() : int
      {
         return this.§`R§.length;
      }
      
      public function get §^s§() : int
      {
         return this.§+l§.width;
      }
      
      public function get §^m§() : int
      {
         return this.§+l§.height;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§+l§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!%§ = param1;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+l§)
            {
               if(!_loc2_)
               {
                  addr33:
                  this.§+l§.dispose();
                  if(!_loc2_)
                  {
                     this.§+l§ = null;
                     if(_loc1_ || _loc1_)
                     {
                        addr48:
                        this.§`R§ = new Vector.<§5!D§>();
                     }
                     return;
                  }
               }
            }
            §§goto(addr48);
         }
         §§goto(addr33);
      }
      
      public function §02§(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§+l§ = param1;
         }
      }
      
      public function §1!$§(param1:§5!D§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§`R§.push(param1);
         }
      }
      
      public function §else §(param1:String) : §5!D§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Number = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(§§pop() < this.§`R§.length)
            {
               if(this.§`R§[_loc2_].mName == param1)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     return this.§`R§[_loc2_];
                  }
               }
               §§push(_loc2_);
               if(_loc4_ || this)
               {
                  §§push(§§pop() + 1);
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  continue;
               }
               continue loop0;
            }
            addr95:
            return null;
         }
      }
      
      public function §!H§(param1:int) : §5!D§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            if(_loc3_ || this)
            {
               §§push(§§pop() < 0);
               if(_loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           addr78:
                           if(param1 >= this.§`R§.length)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr81);
                              }
                           }
                        }
                        return this.§`R§[param1];
                     }
                  }
               }
            }
            §§goto(addr78);
         }
         addr81:
         return null;
      }
   }
}
