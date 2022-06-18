package §@R§
{
   import §8!8§.§+!M§;
   
   public class §?n§
   {
      
      public static const §9S§:int = 0;
      
      public static const §>!V§:int = 1;
      
      public static const §&!W§:int = 2;
       
      
      public var §3a§:Array;
      
      public var §`D§:int;
      
      public var §&!9§:int;
      
      public var mName:String;
      
      public var §>K§:String;
      
      public function §?n§(param1:int, param2:String)
      {
         super();
         this.§&!9§ = param1;
         this.mName = param2;
         this.§3a§ = new Array();
      }
      
      public function §6!D§(param1:§+!M§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§3a§[this.§3a§.length] = param1;
      }
      
      public function §^F§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§>K§ = param1;
         if(this.§&!9§ == §9S§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§3a§.length)
            {
               if((this.§3a§[_loc2_] as §+!M§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§3a§[_loc2_] as §+!M§).setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§3a§[_loc2_] as §+!M§).§0<§ == §<d§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§3a§[_loc2_] as §+!M§).setComponentState(§<d§.§^#§);
               }
               _loc2_++;
            }
         }
         if(this.§&!9§ == §&!W§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§3a§.length)
            {
               if((this.§3a§[_loc2_] as §+!M§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§3a§[_loc2_] as §+!M§).§0<§ == §<d§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§3a§[_loc2_] as §+!M§).setComponentState(§<d§.§^#§);
                  }
                  else if((this.§3a§[_loc2_] as §+!M§).§0<§ == §<d§.§^#§)
                  {
                     if(this.§1k§().length < this.§`D§)
                     {
                        (this.§3a§[_loc2_] as §+!M§).setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§1k§().length >= this.§`D§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§3a§.length)
                  {
                     if((this.§3a§[_loc3_] as §+!M§).§0<§ == §<d§.§^#§)
                     {
                        (this.§3a§[_loc3_] as §+!M§).setComponentState(§<d§.§%^§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§3a§.length)
                  {
                     if((this.§3a§[_loc3_] as §+!M§).§0<§ == §<d§.§%^§)
                     {
                        (this.§3a§[_loc3_] as §+!M§).setComponentState(§<d§.§^#§);
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
         while(_loc2_ < this.§3a§.length)
         {
            (this.§3a§[_loc2_] as §+!M§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §4z§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§3a§.length)
         {
            (this.§3a§[_loc1_] as §+!M§).setComponentState(§<d§.§^#§);
            _loc1_++;
         }
      }
      
      public function §]!<§(param1:Number) : void
      {
         this.§`D§ = param1;
         if(param1 == 1)
         {
            this.§&!9§ = §9S§;
         }
         else
         {
            this.§&!9§ = §&!W§;
         }
      }
      
      public function §15§(param1:Array) : void
      {
         this.§4z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§^F§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §1k§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§3a§.length)
         {
            if((this.§3a§[_loc2_] as §+!M§).§0<§ == §<d§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§3a§[_loc2_] as §+!M§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
