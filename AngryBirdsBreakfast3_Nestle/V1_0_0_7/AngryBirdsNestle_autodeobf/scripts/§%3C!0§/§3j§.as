package §<!0§
{
   import §>P§.§73§;
   
   public class §3j§
   {
      
      public static const §^Q§:int = 0;
      
      public static const §+!y§:int = 1;
      
      public static const §=!a§:int = 2;
       
      
      public var §=v§:Array;
      
      public var §&`§:int;
      
      public var §3d§:int;
      
      public var mName:String;
      
      public var §>"+§:String;
      
      public function §3j§(param1:int, param2:String)
      {
         super();
         this.§3d§ = param1;
         this.mName = param2;
         this.§=v§ = new Array();
      }
      
      public function §>!]§(param1:§73§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§=v§[this.§=v§.length] = param1;
      }
      
      public function §-a§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§>"+§ = param1;
         if(this.§3d§ == §^Q§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§=v§.length)
            {
               if((this.§=v§[_loc2_] as §73§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§=v§[_loc2_] as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§=v§[_loc2_] as §73§).§!!C§ == §3!W§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§=v§[_loc2_] as §73§).setComponentState(§3!W§.§9k§);
               }
               _loc2_++;
            }
         }
         if(this.§3d§ == §=!a§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§=v§.length)
            {
               if((this.§=v§[_loc2_] as §73§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§=v§[_loc2_] as §73§).§!!C§ == §3!W§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§=v§[_loc2_] as §73§).setComponentState(§3!W§.§9k§);
                  }
                  else if((this.§=v§[_loc2_] as §73§).§!!C§ == §3!W§.§9k§)
                  {
                     if(this.§@F§().length < this.§&`§)
                     {
                        (this.§=v§[_loc2_] as §73§).setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§@F§().length >= this.§&`§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§=v§.length)
                  {
                     if((this.§=v§[_loc3_] as §73§).§!!C§ == §3!W§.§9k§)
                     {
                        (this.§=v§[_loc3_] as §73§).setComponentState(§3!W§.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§=v§.length)
                  {
                     if((this.§=v§[_loc3_] as §73§).§!!C§ == §3!W§.COMPONENT_STATE_DISABLED)
                     {
                        (this.§=v§[_loc3_] as §73§).setComponentState(§3!W§.§9k§);
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
         while(_loc3_ < this.§=v§.length)
         {
            (this.§=v§[_loc3_] as §73§).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function §[!Z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§=v§.length)
         {
            (this.§=v§[_loc1_] as §73§).setComponentState(§3!W§.§9k§);
            _loc1_++;
         }
      }
      
      public function §4&§(param1:Number) : void
      {
         this.§&`§ = param1;
         if(param1 == 1)
         {
            this.§3d§ = §^Q§;
         }
         else
         {
            this.§3d§ = §=!a§;
         }
      }
      
      public function §,J§(param1:Array) : void
      {
         this.§[!Z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§-a§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §@F§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§=v§.length)
         {
            if((this.§=v§[_loc2_] as §73§).§!!C§ == §3!W§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§=v§[_loc2_] as §73§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
