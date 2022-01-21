package §6@§
{
   import §31§.§#!d§;
   
   public class §7I§
   {
      
      public static const §,!5§:int = 0;
      
      public static const §'Q§:int = 1;
      
      public static const §6X§:int = 2;
       
      
      public var §?h§:Array;
      
      public var §-!J§:int;
      
      public var §8!`§:int;
      
      public var mName:String;
      
      public var §,M§:String;
      
      public function §7I§(param1:int, param2:String)
      {
         super();
         this.§8!`§ = param1;
         this.mName = param2;
         this.§?h§ = new Array();
      }
      
      public function §+<§(param1:§#!d§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§?h§[this.§?h§.length] = param1;
      }
      
      public function §>!#§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§,M§ = param1;
         if(this.§8!`§ == §,!5§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?h§.length)
            {
               if((this.§?h§[_loc2_] as §#!d§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§?h§[_loc2_] as §#!d§).setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§?h§[_loc2_] as §#!d§).§ D§ == §>n§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§?h§[_loc2_] as §#!d§).setComponentState(§>n§.§`w§);
               }
               _loc2_++;
            }
         }
         if(this.§8!`§ == §6X§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§?h§.length)
            {
               if((this.§?h§[_loc2_] as §#!d§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§?h§[_loc2_] as §#!d§).§ D§ == §>n§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§?h§[_loc2_] as §#!d§).setComponentState(§>n§.§`w§);
                  }
                  else if((this.§?h§[_loc2_] as §#!d§).§ D§ == §>n§.§`w§)
                  {
                     if(this.§3b§().length < this.§-!J§)
                     {
                        (this.§?h§[_loc2_] as §#!d§).setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§3b§().length >= this.§-!J§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?h§.length)
                  {
                     if((this.§?h§[_loc3_] as §#!d§).§ D§ == §>n§.§`w§)
                     {
                        (this.§?h§[_loc3_] as §#!d§).setComponentState(§>n§.§0A§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§?h§.length)
                  {
                     if((this.§?h§[_loc3_] as §#!d§).§ D§ == §>n§.§0A§)
                     {
                        (this.§?h§[_loc3_] as §#!d§).setComponentState(§>n§.§`w§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§?h§.length)
         {
            (this.§?h§[_loc2_] as §#!d§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §[!c§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§?h§.length)
         {
            (this.§?h§[_loc1_] as §#!d§).setComponentState(§>n§.§`w§);
            _loc1_++;
         }
      }
      
      public function §;!g§(param1:Number) : void
      {
         this.§-!J§ = param1;
         if(param1 == 1)
         {
            this.§8!`§ = §,!5§;
         }
         else
         {
            this.§8!`§ = §6X§;
         }
      }
      
      public function §!A§(param1:Array) : void
      {
         this.§[!c§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§>!#§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §3b§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§?h§.length)
         {
            if((this.§?h§[_loc2_] as §#!d§).§ D§ == §>n§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§?h§[_loc2_] as §#!d§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
