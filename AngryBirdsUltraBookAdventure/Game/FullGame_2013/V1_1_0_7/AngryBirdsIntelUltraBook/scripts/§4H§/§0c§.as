package §4H§
{
   public class §0c§
   {
      
      private static var §&F§:§0c§;
       
      
      private var §6!A§:Array;
      
      private var §<!4§:Array;
      
      public function §0c§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6!A§ = [];
            loop0:
            while(true)
            {
               this.§<!4§ = [];
               do
               {
                  super();
                  do
                  {
                     if(§&F§)
                     {
                        if(_loc1_)
                        {
                           throw new Error("Can\'t create more than one instance of a singleton.");
                        }
                        continue loop0;
                     }
                     addr28:
                     while(true)
                     {
                        §&F§ = this;
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(!_loc1_);
               
               return;
            }
         }
         while(true)
         {
            §§goto(addr28);
         }
      }
      
      public static function get §[U§() : §0c§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§&F§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr44:
                     §&F§ = new §0c§();
                  }
               }
               return §&F§;
            }
         }
         §§goto(addr44);
      }
      
      public static function §#w§(param1:Array, param2:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc3_:Array = param1.concat();
         for each(_loc4_ in param2)
         {
            if(_loc8_ || _loc3_)
            {
               if(_loc3_.indexOf(_loc4_) != -1)
               {
                  continue;
               }
               if(_loc7_ && param1)
               {
                  continue;
               }
            }
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public function §@!=§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6!A§);
            if(_loc3_ || param1)
            {
               §§push(param1);
               if(!_loc2_)
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                  }
                  §§goto(addr50);
               }
               §§pop().push(§§pop());
               §§goto(addr50);
            }
            §§goto(addr48);
         }
         addr50:
         if(!_loc2_)
         {
            addr48:
            §§push(this.§6!A§);
            §§push(param1);
         }
      }
      
      public function §%!Y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§6!A§);
            if(!(_loc3_ && this))
            {
               §§push(param1);
               if(_loc2_ || param1)
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           §§pop();
                           addr78:
                           return this.§<!4§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §]v§(param1:String) : Boolean
      {
         return this.§<!4§.indexOf(param1) == -1;
      }
      
      public function §'?§(param1:String) : Boolean
      {
         return this.§<!4§.indexOf(param1) == -1;
      }
      
      public function §'N§() : Array
      {
         return this.§6!A§;
      }
      
      public function §+!^§() : Array
      {
         return this.§<!4§;
      }
      
      public function §-c§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && _loc2_))
            {
               this.§@!=§(_loc2_);
            }
         }
      }
      
      public function §4C§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(_loc6_)
            {
               continue;
            }
            §§push(this.§<!4§);
            if(!_loc6_)
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  if(§§pop().indexOf(§§pop()) != -1)
                  {
                     continue;
                  }
                  if(_loc6_ && _loc2_)
                  {
                     continue;
                  }
                  addr72:
                  §§push(this.§<!4§);
                  §§push(_loc2_);
               }
               §§pop().push(§§pop());
               continue;
            }
            §§goto(addr72);
         }
      }
   }
}
