package §>!$§
{
   import §^V§.§8F§;
   import §^V§.Logging;
   
   public final class §<"u§
   {
      
      private static const L:§8F§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            L = Logging.§,S§(§<"u§);
         }
      }
      
      private var §>#6§:§%l§;
      
      public var §<"q§:§%l§;
      
      public function §<"u§(param1:§%l§ = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            super();
            loop0:
            while(param1 == null)
            {
               if(!(_loc2_ && this))
               {
                  if(_loc3_)
                  {
                     return;
                  }
                  continue;
               }
               addr75:
               while(true)
               {
                  break loop0;
               }
            }
            while(true)
            {
               this.§4"T§ = param1;
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               §§goto(addr75);
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §]!D§() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§<"q§);
            loop0:
            while(true)
            {
               §§push(null);
               addr115:
               addr117:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     this.§<"q§ = this.§<"q§.§]!D§;
                     addr94:
                     while(!(_loc2_ && _loc1_))
                     {
                        §§push(this.§<"q§);
                        continue loop0;
                     }
                  }
               }
               addr116:
               return null;
            }
         }
         while(true)
         {
            §§goto(addr88);
         }
      }
      
      public function get data() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§<"q§);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     return null;
                  }
                  addr53:
                  §§push(this.§<"q§);
               }
               §§goto(addr53);
            }
            return §§pop().data;
         }
         §§goto(addr53);
      }
      
      public function set §4"T§(param1:§%l§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>#6§ = param1;
            do
            {
               this.§<"q§ = param1.§["4§();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function §>"k§() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§<"q§.§>"k§();
         }
      }
      
      public function get §4"T§() : §%l§
      {
         return this.§>#6§;
      }
   }
}
