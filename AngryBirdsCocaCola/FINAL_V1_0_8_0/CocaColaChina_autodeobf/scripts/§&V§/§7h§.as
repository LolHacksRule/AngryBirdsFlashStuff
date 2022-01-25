package §&V§
{
   import §68§.§0_§;
   
   public class §7h§
   {
      
      public static const §'!]§:int = 0;
      
      public static const §<!5§:int = 1;
      
      public static const §9[§:int = 2;
       
      
      public var §0!1§:Array;
      
      public var §;c§:int;
      
      public var §;6§:int;
      
      public var mName:String;
      
      public var §1!J§:String;
      
      public function §7h§(param1:int, param2:String)
      {
         super();
         this.§;6§ = param1;
         this.mName = param2;
         this.§0!1§ = new Array();
      }
      
      public function §9!W§(param1:§0_§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§0!1§[this.§0!1§.length] = param1;
      }
      
      public function §5X§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§1!J§ = param1;
         if(this.§;6§ == §'!]§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§0!1§.length)
            {
               if((this.§0!1§[_loc2_] as §0_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§0!1§[_loc2_] as §0_§).setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§0!1§[_loc2_] as §0_§).§4j§ == §4o§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§0!1§[_loc2_] as §0_§).setComponentState(§4o§.§3m§);
               }
               _loc2_++;
            }
         }
         if(this.§;6§ == §9[§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§0!1§.length)
            {
               if((this.§0!1§[_loc2_] as §0_§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§0!1§[_loc2_] as §0_§).§4j§ == §4o§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§0!1§[_loc2_] as §0_§).setComponentState(§4o§.§3m§);
                  }
                  else if((this.§0!1§[_loc2_] as §0_§).§4j§ == §4o§.§3m§)
                  {
                     if(this.§?!#§().length < this.§;c§)
                     {
                        (this.§0!1§[_loc2_] as §0_§).setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§?!#§().length >= this.§;c§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§0!1§.length)
                  {
                     if((this.§0!1§[_loc3_] as §0_§).§4j§ == §4o§.§3m§)
                     {
                        (this.§0!1§[_loc3_] as §0_§).setComponentState(§4o§.§0!;§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§0!1§.length)
                  {
                     if((this.§0!1§[_loc3_] as §0_§).§4j§ == §4o§.§0!;§)
                     {
                        (this.§0!1§[_loc3_] as §0_§).setComponentState(§4o§.§3m§);
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
         while(_loc2_ < this.§0!1§.length)
         {
            (this.§0!1§[_loc2_] as §0_§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §%J§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§0!1§.length)
         {
            (this.§0!1§[_loc1_] as §0_§).setComponentState(§4o§.§3m§);
            _loc1_++;
         }
      }
      
      public function §!![§(param1:Number) : void
      {
         this.§;c§ = param1;
         if(param1 == 1)
         {
            this.§;6§ = §'!]§;
         }
         else
         {
            this.§;6§ = §9[§;
         }
      }
      
      public function §<x§(param1:Array) : void
      {
         this.§%J§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§5X§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §?!#§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!1§.length)
         {
            if((this.§0!1§[_loc2_] as §0_§).§4j§ == §4o§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§0!1§[_loc2_] as §0_§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
