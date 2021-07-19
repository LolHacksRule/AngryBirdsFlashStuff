package §4#R§
{
   import §!!c§.§]# §;
   import §+!J§.§""A§;
   import §+!J§.§>n§;
   import §,0§.§"§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §]"U§.§'#;§;
   import §]"r§.§2!H§;
   import §]"r§.§;"6§;
   import §`^§.DropDownEvent;
   import com.furusystems.dconsole2.§!!%§;
   import flash.utils.Dictionary;
   
   public class §2"B§ extends §>n§ implements §]# §
   {
       
      
      private var §@l§:Dictionary;
      
      private var §-s§:§;"6§;
      
      private var §5"d§:§>l§;
      
      public function §2"B§(param1:§!!%§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@l§ = new Dictionary();
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§5"d§ = param1.§]"z§;
               while(true)
               {
                  this.§5"d§.addCallback(§""A§.§4#I§,this.§-!B§);
                  continue loop0;
                  addr37:
                  if(!(_loc2_ && param1))
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §=!U§(param1:DropDownEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§"#7§(param1.§5d§.data);
         }
      }
      
      public function §-!B§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-s§.§<!P§();
         }
      }
      
      public function §8#§(param1:§'#;§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§-s§.§8#§(new §2!H§(param1.title,param1.view,true));
         }
      }
      
      public function §^q§(param1:§'#;§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-s§.§[!N§(param1.title);
         }
      }
      
      public function §"#7§(param1:§"#9§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-s§.§##4§(param1.title);
            do
            {
               this.§5"d§.§#!"§(§""A§.§3#5§,param1,this);
            }
            while(_loc2_);
            
         }
      }
   }
}
