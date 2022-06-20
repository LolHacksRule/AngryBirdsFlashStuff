package §1"2§
{
   import §"",§.§<?§;
   
   public class §2!v§
   {
      
      public static const §,m§:int = 0;
      
      public static const §<"5§:int = 1;
      
      public static const §'[§:int = 2;
       
      
      public var §8,§:Array;
      
      public var §>!D§:int;
      
      public var §+q§:int;
      
      public var mName:String;
      
      public var §""C§:String;
      
      public function §2!v§(param1:int, param2:String)
      {
         super();
         this.§+q§ = param1;
         this.mName = param2;
         this.§8,§ = new Array();
      }
      
      public function §?!x§(param1:§<?§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§8,§[this.§8,§.length] = param1;
      }
      
      public function §%!`§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§""C§ = param1;
         if(this.§+q§ == §,m§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§8,§.length)
            {
               if((this.§8,§[_loc2_] as §<?§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§8,§[_loc2_] as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§8,§[_loc2_] as §<?§).§2!N§ == § F§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§8,§[_loc2_] as §<?§).setComponentState(§ F§.§8'§);
               }
               _loc2_++;
            }
         }
         if(this.§+q§ == §'[§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§8,§.length)
            {
               if((this.§8,§[_loc2_] as §<?§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§8,§[_loc2_] as §<?§).§2!N§ == § F§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§8,§[_loc2_] as §<?§).setComponentState(§ F§.§8'§);
                  }
                  else if((this.§8,§[_loc2_] as §<?§).§2!N§ == § F§.§8'§)
                  {
                     if(this.§2!8§().length < this.§>!D§)
                     {
                        (this.§8,§[_loc2_] as §<?§).setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§2!8§().length >= this.§>!D§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§8,§.length)
                  {
                     if((this.§8,§[_loc3_] as §<?§).§2!N§ == § F§.§8'§)
                     {
                        (this.§8,§[_loc3_] as §<?§).setComponentState(§ F§.§<!7§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§8,§.length)
                  {
                     if((this.§8,§[_loc3_] as §<?§).§2!N§ == § F§.§<!7§)
                     {
                        (this.§8,§[_loc3_] as §<?§).setComponentState(§ F§.§8'§);
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
         while(_loc2_ < this.§8,§.length)
         {
            (this.§8,§[_loc2_] as §<?§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §'+§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§8,§.length)
         {
            (this.§8,§[_loc1_] as §<?§).setComponentState(§ F§.§8'§);
            _loc1_++;
         }
      }
      
      public function §!!H§(param1:Number) : void
      {
         this.§>!D§ = param1;
         if(param1 == 1)
         {
            this.§+q§ = §,m§;
         }
         else
         {
            this.§+q§ = §'[§;
         }
      }
      
      public function §3!'§(param1:Array) : void
      {
         this.§'+§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§%!`§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §2!8§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§8,§.length)
         {
            if((this.§8,§[_loc2_] as §<?§).§2!N§ == § F§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§8,§[_loc2_] as §<?§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
