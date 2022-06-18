package §6!K§
{
   import §2K§.§ 3§;
   
   public class §#!c§
   {
      
      public static const §=W§:int = 0;
      
      public static const §!M§:int = 1;
      
      public static const §[!§:int = 2;
       
      
      public var §2!S§:Array;
      
      public var §4!V§:int;
      
      public var §9!@§:int;
      
      public var mName:String;
      
      public var §^W§:String;
      
      public function §#!c§(param1:int, param2:String)
      {
         super();
         this.§9!@§ = param1;
         this.mName = param2;
         this.§2!S§ = new Array();
      }
      
      public function §'!Q§(param1:§ 3§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§2!S§[this.§2!S§.length] = param1;
      }
      
      public function §?[§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§^W§ = param1;
         if(this.§9!@§ == §=W§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2!S§.length)
            {
               if((this.§2!S§[_loc2_] as § 3§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§2!S§[_loc2_] as § 3§).setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§2!S§[_loc2_] as § 3§).§]!7§ == §3l§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§2!S§[_loc2_] as § 3§).setComponentState(§3l§.§0!c§);
               }
               _loc2_++;
            }
         }
         if(this.§9!@§ == §[!§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2!S§.length)
            {
               if((this.§2!S§[_loc2_] as § 3§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§2!S§[_loc2_] as § 3§).§]!7§ == §3l§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§2!S§[_loc2_] as § 3§).setComponentState(§3l§.§0!c§);
                  }
                  else if((this.§2!S§[_loc2_] as § 3§).§]!7§ == §3l§.§0!c§)
                  {
                     if(this.§+%§().length < this.§4!V§)
                     {
                        (this.§2!S§[_loc2_] as § 3§).setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§+%§().length >= this.§4!V§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2!S§.length)
                  {
                     if((this.§2!S§[_loc3_] as § 3§).§]!7§ == §3l§.§0!c§)
                     {
                        (this.§2!S§[_loc3_] as § 3§).setComponentState(§3l§.§,!8§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2!S§.length)
                  {
                     if((this.§2!S§[_loc3_] as § 3§).§]!7§ == §3l§.§,!8§)
                     {
                        (this.§2!S§[_loc3_] as § 3§).setComponentState(§3l§.§0!c§);
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
         while(_loc2_ < this.§2!S§.length)
         {
            (this.§2!S§[_loc2_] as § 3§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §@h§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!S§.length)
         {
            (this.§2!S§[_loc1_] as § 3§).setComponentState(§3l§.§0!c§);
            _loc1_++;
         }
      }
      
      public function §^!-§(param1:Number) : void
      {
         this.§4!V§ = param1;
         if(param1 == 1)
         {
            this.§9!@§ = §=W§;
         }
         else
         {
            this.§9!@§ = §[!§;
         }
      }
      
      public function §^!T§(param1:Array) : void
      {
         this.§@h§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§?[§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §+%§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!S§.length)
         {
            if((this.§2!S§[_loc2_] as § 3§).§]!7§ == §3l§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§2!S§[_loc2_] as § 3§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
