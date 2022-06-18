package §^r§
{
   import §7f§.§,!>§;
   
   public class §-!'§
   {
      
      public static const §9j§:int = 0;
      
      public static const §7C§:int = 1;
      
      public static const §"6§:int = 2;
       
      
      public var §&3§:Array;
      
      public var §6H§:int;
      
      public var §&1§:int;
      
      public var mName:String;
      
      public var §;!V§:String;
      
      public function §-!'§(param1:int, param2:String)
      {
         super();
         this.§&1§ = param1;
         this.mName = param2;
         this.§&3§ = new Array();
      }
      
      public function §[!1§(param1:§,!>§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§&3§[this.§&3§.length] = param1;
      }
      
      public function §6R§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§;!V§ = param1;
         if(this.§&1§ == §9j§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&3§.length)
            {
               if((this.§&3§[_loc2_] as §,!>§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§&3§[_loc2_] as §,!>§).setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§&3§[_loc2_] as §,!>§).§6f§ == §%%§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§&3§[_loc2_] as §,!>§).setComponentState(§%%§.§'$§);
               }
               _loc2_++;
            }
         }
         if(this.§&1§ == §"6§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§&3§.length)
            {
               if((this.§&3§[_loc2_] as §,!>§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§&3§[_loc2_] as §,!>§).§6f§ == §%%§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§&3§[_loc2_] as §,!>§).setComponentState(§%%§.§'$§);
                  }
                  else if((this.§&3§[_loc2_] as §,!>§).§6f§ == §%%§.§'$§)
                  {
                     if(this.§"O§().length < this.§6H§)
                     {
                        (this.§&3§[_loc2_] as §,!>§).setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§"O§().length >= this.§6H§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&3§.length)
                  {
                     if((this.§&3§[_loc3_] as §,!>§).§6f§ == §%%§.§'$§)
                     {
                        (this.§&3§[_loc3_] as §,!>§).setComponentState(§%%§.§@!]§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§&3§.length)
                  {
                     if((this.§&3§[_loc3_] as §,!>§).§6f§ == §%%§.§@!]§)
                     {
                        (this.§&3§[_loc3_] as §,!>§).setComponentState(§%%§.§'$§);
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
         while(_loc2_ < this.§&3§.length)
         {
            (this.§&3§[_loc2_] as §,!>§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §4]§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§&3§.length)
         {
            (this.§&3§[_loc1_] as §,!>§).setComponentState(§%%§.§'$§);
            _loc1_++;
         }
      }
      
      public function §,4§(param1:Number) : void
      {
         this.§6H§ = param1;
         if(param1 == 1)
         {
            this.§&1§ = §9j§;
         }
         else
         {
            this.§&1§ = §"6§;
         }
      }
      
      public function §[g§(param1:Array) : void
      {
         this.§4]§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§6R§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §"O§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§&3§.length)
         {
            if((this.§&3§[_loc2_] as §,!>§).§6f§ == §%%§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§&3§[_loc2_] as §,!>§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
