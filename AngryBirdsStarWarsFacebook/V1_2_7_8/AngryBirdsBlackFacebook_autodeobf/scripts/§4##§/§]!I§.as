package §4##§
{
   import §""d§.§2"8§;
   
   public class §]!I§
   {
      
      public static const §[!4§:int = 0;
      
      public static const §&A§:int = 1;
      
      public static const §2"c§:int = 2;
       
      
      public var §@"_§:Array;
      
      public var §@`§:int;
      
      public var §]m§:int;
      
      public var mName:String;
      
      public var §%B§:String;
      
      public function §]!I§(param1:int, param2:String)
      {
         super();
         this.§]m§ = param1;
         this.mName = param2;
         this.§@"_§ = new Array();
      }
      
      public function addButton(param1:§2"8§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§@"_§[this.§@"_§.length] = param1;
      }
      
      public function §,"f§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§%B§ = param1;
         if(this.§]m§ == §[!4§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@"_§.length)
            {
               if((this.§@"_§[_loc2_] as §2"8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§@"_§[_loc2_] as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§@"_§[_loc2_] as §2"8§).§1"w§ == §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§@"_§[_loc2_] as §2"8§).setComponentState(§7!Y§.§6!7§);
               }
               _loc2_++;
            }
         }
         if(this.§]m§ == §2"c§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§@"_§.length)
            {
               if((this.§@"_§[_loc2_] as §2"8§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§@"_§[_loc2_] as §2"8§).§1"w§ == §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§@"_§[_loc2_] as §2"8§).setComponentState(§7!Y§.§6!7§);
                  }
                  else if((this.§@"_§[_loc2_] as §2"8§).§1"w§ == §7!Y§.§6!7§)
                  {
                     if(this.§2!,§().length < this.§@`§)
                     {
                        (this.§@"_§[_loc2_] as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2!,§().length >= this.§@`§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@"_§.length)
                  {
                     if((this.§@"_§[_loc3_] as §2"8§).§1"w§ == §7!Y§.§6!7§)
                     {
                        (this.§@"_§[_loc3_] as §2"8§).setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§@"_§.length)
                  {
                     if((this.§@"_§[_loc3_] as §2"8§).§1"w§ == §7!Y§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§@"_§[_loc3_] as §2"8§).setComponentState(§7!Y§.§6!7§);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.§@"_§.length)
         {
            (this.§@"_§[_loc3_] as §2"8§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §^_§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§@"_§.length)
         {
            (this.§@"_§[_loc1_] as §2"8§).setComponentState(§7!Y§.§6!7§);
            _loc1_++;
         }
      }
      
      public function §6!A§(param1:Number) : void
      {
         this.§@`§ = param1;
         if(param1 == 1)
         {
            this.§]m§ = §[!4§;
         }
         else
         {
            this.§]m§ = §2"c§;
         }
      }
      
      public function §["=§(param1:Array) : void
      {
         this.§^_§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§,"f§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2!,§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§@"_§.length)
         {
            if((this.§@"_§[_loc2_] as §2"8§).§1"w§ == §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§@"_§[_loc2_] as §2"8§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
