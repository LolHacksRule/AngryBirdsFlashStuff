package §5!G§
{
   import each.§8!N§;
   
   public class §64§
   {
      
      private static var §=!w§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!w§ = §]W§;
         }
      }
      
      private var §#!;§:Vector.<§#!6§>;
      
      public function §64§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§5!<§(§8!N§.§?!c§(§=!w§));
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §5!<§(param1:XML) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§#!6§ = null;
         var _loc3_:XML = null;
         if(!(_loc6_ && param1))
         {
            this.§#!;§ = new Vector.<§#!6§>();
         }
         for each(_loc3_ in param1.language)
         {
            _loc2_ = new §#!6§();
            if(!(_loc6_ && this))
            {
               _loc2_.id = _loc3_.@id;
               while(true)
               {
                  _loc2_.name = _loc3_.@name;
                  loop2:
                  while(_loc7_)
                  {
                     while(true)
                     {
                        _loc2_.nativeName = _loc3_.@nativeName;
                        while(true)
                        {
                           if(_loc7_)
                           {
                              this.§#!;§.push(_loc2_);
                              if(!(_loc6_ && _loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            while(false)
            {
               §§goto(addr85);
            }
         }
      }
      
      public function §5!U§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§#!6§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§#!;§)
         {
            if(!_loc5_)
            {
               _loc1_.push(_loc2_);
            }
         }
         if(!(_loc5_ && this))
         {
            _loc1_.sortOn("nativeName");
         }
         return _loc1_;
      }
   }
}
