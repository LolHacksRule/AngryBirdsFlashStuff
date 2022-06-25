package §4H§
{
   public class §0c§
   {
      
      private static var §&F§:§0c§;
       
      
      private var §6!A§:Array;
      
      private var §<!4§:Array;
      
      public function §0c§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§6!A§ = [];
            while(true)
            {
               this.§<!4§ = [];
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     super();
                     loop3:
                     while(!_loc1_)
                     {
                        if(§&F§)
                        {
                           if(_loc2_)
                           {
                              throw new Error("Can\'t create more than one instance of a singleton.");
                           }
                           loop4:
                           while(true)
                           {
                              addr24:
                              while(true)
                              {
                                 §&F§ = this;
                                 if(!(_loc1_ && this))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr24);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public static function get §[U§() : §0c§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§&F§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     addr40:
                     §&F§ = new §0c§();
                  }
               }
               return §&F§;
            }
         }
         §§goto(addr40);
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
               if(_loc7_)
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
         if(_loc3_ || _loc2_)
         {
            §§push(this.§6!A§);
            if(!_loc2_)
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop().indexOf(§§pop()) == -1)
                  {
                  }
                  §§goto(addr55);
               }
               §§pop().push(§§pop());
               §§goto(addr55);
            }
            §§goto(addr53);
         }
         addr55:
         if(!_loc2_)
         {
            addr53:
            §§push(this.§6!A§);
            §§push(param1);
         }
      }
      
      public function §%!Y§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§6!A§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop().indexOf(§§pop()) == -1);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           addr69:
                           §§pop();
                           return this.§<!4§.indexOf(param1) == -1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
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
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               this.§@!=§(_loc2_);
            }
         }
      }
      
      public function §4C§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               §§push(this.§<!4§);
               if(!_loc5_)
               {
                  §§push(_loc2_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop().indexOf(§§pop()) != -1)
                     {
                        continue;
                     }
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     addr78:
                     §§push(this.§<!4§);
                     §§push(_loc2_);
                  }
                  §§pop().push(§§pop());
                  continue;
               }
            }
            §§goto(addr78);
         }
      }
   }
}
