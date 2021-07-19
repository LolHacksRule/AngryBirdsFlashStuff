package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3C§.§ "A§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   
   public class §'u§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndFailStateRio";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "LevelEndFailStateRio";
         }
      }
      
      private var §?"§:§ "A§;
      
      public function §'u§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param4);
            do
            {
               this.§?"§ = new § "A§(this);
            }
            while(!_loc5_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8!A§ = new §1"F§(this);
            do
            {
               §8!A§.init(this.§!!n§());
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.ViewLevelEndFailCustom[0];
      }
      
      public function §76§() : String
      {
         return StateEpisodeSelection.STATE_NAME;
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §§push(§ !g§.§;!'§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§>";§);
                  loop2:
                  while(true)
                  {
                     §§pop().§@;§();
                     loop3:
                     while(!_loc2_)
                     {
                        §§push(§ !g§.§;!'§);
                        while(_loc3_)
                        {
                           §§push(§§pop().§>";§);
                           if(_loc3_)
                           {
                              §§pop().openPopup(this.§?"§,false,false);
                              for(; _loc3_ || _loc3_; while(!(_loc2_ && _loc2_))
                              {
                              })
                              {
                                 §§push(§ !g§.§;!'§);
                                 while(true)
                                 {
                                    §§push((§§pop() as §`Y§).§&,§);
                                    addr69:
                                    §§goto(addr78);
                                 }
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         addr78:
         while(true)
         {
            §§push(false);
            addr70:
            while(true)
            {
               §§pop().§""8§(§§pop());
               continue loop5;
            }
         }
         while(true)
         {
            §§push(§ !g§.§;!'§);
            if(_loc2_ && param1)
            {
               continue loop6;
            }
            if(_loc2_)
            {
               continue loop4;
            }
            §§push((§§pop() as §`Y§).§&,§);
            if(_loc3_)
            {
               §§push(false);
               if(_loc3_)
               {
                  §§pop().§<U§(§§pop());
                  if(_loc3_ || param1)
                  {
                     break;
                  }
                  continue loop5;
               }
            }
            else
            {
               §§goto(addr69);
            }
            §§goto(addr70);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(nextState.length > 0)
            {
               while(true)
               {
                  §9q§.§>!L§.clearLevel();
                  while(true)
                  {
                  }
               }
               addr62:
            }
            do
            {
               this.§?"§.update(param1);
               if(_loc3_ && this)
               {
                  continue;
               }
            }
            while(!_loc2_);
            
            return;
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      public function §^!m§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      public function §4?§() : String
      {
         return §]J§.STATE_NAME;
      }
      
      public function §+"$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §8!^§(param1);
         }
      }
      
      public function get §=!+§() : §9"!§
      {
         return §6u§;
      }
      
      public function §@!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6u§.loadLevel(§6u§.getValidLevelId(this.§=!+§.getNextLevelId()));
            do
            {
               §8!^§(§?!#§.STATE_NAME);
            }
            while(!_loc1_);
            
         }
      }
   }
}
