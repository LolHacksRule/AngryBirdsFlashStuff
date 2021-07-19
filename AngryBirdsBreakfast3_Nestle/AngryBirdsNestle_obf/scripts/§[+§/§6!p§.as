package §[+§
{
   import §24§.§4!H§;
   import §4!i§.§0]§;
   
   public class §6!p§
   {
      
      private static var §5"!§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §5"!§ = §3P§;
         }
      }
      
      private var §-!D§:§0]§;
      
      public function §6!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         do
         {
            this.§=!=§(§4!H§.§7o§(§5"!§));
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private function §=!=§(param1:XML) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§3!O§ = null;
         var _loc3_:§"!u§ = null;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         if(_loc10_ || this)
         {
            this.§-!D§ = new §0]§();
         }
         loop0:
         for each(_loc4_ in param1.country)
         {
            _loc2_ = new §3!O§();
            if(_loc10_)
            {
               _loc2_.id = _loc4_.@id;
               if(!(_loc10_ || _loc2_))
               {
                  continue;
               }
               _loc2_.name = _loc4_.@name;
               if(_loc10_ || param1)
               {
                  _loc2_.nativeName = _loc4_.@nativeName;
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        _loc2_.alphabeticName = _loc4_.@alphabeticName;
                        do
                        {
                           _loc2_.brand = _loc4_.@brand;
                           if(_loc11_)
                           {
                              break;
                           }
                           if(_loc11_ && _loc2_)
                           {
                              continue;
                           }
                           if(!_loc10_)
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           var _loc8_:int = 0;
                           if(!_loc11_)
                           {
                              loop4:
                              for each(_loc5_ in _loc4_.language)
                              {
                                 _loc3_ = new §"!u§();
                                 if(!_loc11_)
                                 {
                                    _loc3_.id = _loc5_.@id;
                                    while(true)
                                    {
                                       _loc3_.name = _loc5_.@name;
                                       loop6:
                                       for(; _loc10_ || _loc3_; while(true)
                                       {
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             _loc2_.§ 6§(_loc3_);
                                             if(!_loc11_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop6;
                                       },while(false)
                                       {
                                          §§goto(addr154);
                                       },continue loop4)
                                       {
                                          while(true)
                                          {
                                             _loc3_.nativeName = _loc5_.@nativeName;
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr152);
                              }
                           }
                        }
                        while(!(_loc11_ && this));
                        
                        continue loop0;
                     }
                  }
               }
            }
            this.§-!D§[_loc2_.id.toUpperCase()] = _loc2_;
         }
      }
      
      public function §;&§() : Array
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:Vector.<§3!O§> = null;
         var _loc3_:§3!O§ = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.§-!D§)
         {
            if(!_loc6_)
            {
               _loc2_.push(_loc3_);
            }
         }
         if(!(_loc6_ && _loc2_))
         {
            _loc2_.sortOn("alphabeticName");
         }
         return _loc2_;
      }
      
      public function §,!$§(param1:String) : Array
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param1);
            if(_loc4_ || this)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc2_:§3!O§ = this.§-!D§[param1];
         var _loc3_:Array = _loc2_.§,!$§();
         if(_loc4_)
         {
            _loc3_.sortOn("nativeName");
         }
         return _loc3_;
      }
      
      public function §^S§(param1:String) : §3!O§
      {
         return this.§-!D§[param1.toUpperCase()];
      }
   }
}
