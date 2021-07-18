package §^!v§
{
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import flash.display.MovieClip;
   
   public class §5!N§
   {
       
      
      protected var §@!#§:int;
      
      protected var §5o§:Boolean;
      
      protected var §'!2§:Boolean;
      
      protected var §&"Y§:§^"m§;
      
      protected var §]"b§:§^"m§;
      
      protected var §^c§:§ #^§;
      
      protected var §6"7§:MovieClip;
      
      public var §5!_§:Object;
      
      public function §5!N§(param1:§ #^§, param2:int, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super();
            while(true)
            {
               this.§^c§ = param1;
               while(_loc5_)
               {
                  addr68:
                  if(!(_loc5_ || param2))
                  {
                     continue;
                  }
                  this.init();
                  addr75:
                  if(_loc5_ || param1)
                  {
                     addr39:
                     if(_loc4_ && param2)
                     {
                        loop4:
                        while(true)
                        {
                           this.§'!2§ = true;
                           addr61:
                           addr85:
                           while(_loc5_ || param2)
                           {
                              §§goto(addr68);
                              §§goto(addr75);
                           }
                           while(true)
                           {
                              this.§5o§ = param3;
                              continue loop4;
                              §§goto(addr61);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr61);
               }
            }
         }
         while(true)
         {
            this.§@!#§ = param2;
            §§goto(addr85);
         }
      }
      
      public function get canBuyToUnlock() : Boolean
      {
         return this.§5o§;
      }
      
      public function set canBuyToUnlock(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§5o§ = param1;
         }
      }
      
      public function get §?!N§() : int
      {
         return this.§@!#§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§'!2§ = param1;
         }
         do
         {
            this.refresh();
         }
         while(_loc3_ && param1);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&"Y§ = §^"m§(this.§^c§.getItemByName("Button_NextLevel"));
            while(true)
            {
               this.§]"b§ = §^"m§(this.§^c§.getItemByName("Button_NextLevelLocked"));
               §§goto(addr64);
            }
         }
         addr64:
         while(true)
         {
            this.§6"7§ = this.§^c§.mClip.unlockTimer;
            if(_loc1_ || _loc1_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6"7§.visible = this.§'!2§;
         }
         do
         {
            this.§]"b§.setVisibility(this.§'!2§);
            do
            {
               §§push(this.§&"Y§);
               §§push(this.§'!2§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(!§§pop());
               }
               §§pop().setVisibility(§§pop());
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&"Y§ = null;
            while(true)
            {
               this.§]"b§ = null;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§6"7§ = null;
            if(!_loc2_)
            {
               if(_loc1_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
