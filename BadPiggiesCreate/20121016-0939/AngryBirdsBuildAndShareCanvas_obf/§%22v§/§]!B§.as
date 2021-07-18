package §"v§
{
   public class §]!B§ extends §9"§
   {
       
      
      private var §3f§:§%=§ = null;
      
      private var §0r§:int = 0;
      
      public function §]!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §!p§() : §]!B§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§]!B§ = new §]!B§();
         if(!(_loc4_ && _loc2_))
         {
            _loc1_.§0r§ = 0;
            loop0:
            while(true)
            {
               _loc1_.§3f§ = §%=§.§7!`§("");
               while(true)
               {
                  _loc1_.§2+§ = false;
                  loop2:
                  while(_loc5_ || _loc3_)
                  {
                     while(true)
                     {
                        _loc1_.theme = §4!§;
                        loop4:
                        while(_loc5_)
                        {
                           while(true)
                           {
                              _loc1_.mName = "DEFAULT THEME";
                              if(_loc5_ || §]!B§)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           var _loc2_:§4^§ = new §4^§();
                           if(_loc5_)
                           {
                              _loc2_.id = "SLINGSHOT";
                              if(!_loc4_)
                              {
                                 addr100:
                                 _loc1_.§="8§(_loc2_);
                              }
                              var _loc3_:§4^§ = new §4^§();
                              if(!(_loc4_ && §]!B§))
                              {
                                 _loc3_.id = "CASTLE";
                              }
                              do
                              {
                                 _loc1_.§="8§(_loc3_);
                              }
                              while(!_loc5_);
                              
                              return _loc1_;
                           }
                           §§goto(addr100);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public static function §+0§(param1:String) : §]!B§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Object = JSON.parse(param1);
         var _loc3_:§]!B§ = new §]!B§();
         if(_loc4_ || param1)
         {
            _loc3_.§1!n§(param1);
            do
            {
               if(_loc2_.rating)
               {
                  while(true)
                  {
                     _loc3_.§0r§ = _loc2_.rating;
                     addr89:
                     while(true)
                     {
                     }
                  }
                  addr85:
               }
               while(true)
               {
                  _loc3_.§3f§ = §%=§.§`!S§(_loc2_);
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
            }
            while(_loc5_ && _loc2_);
            
         }
         return _loc3_;
      }
      
      public function get §5=§() : §%=§
      {
         return this.§3f§;
      }
      
      public function get §=p§() : int
      {
         return this.§0r§;
      }
      
      public function set §=p§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0r§ = param1;
         }
      }
   }
}
