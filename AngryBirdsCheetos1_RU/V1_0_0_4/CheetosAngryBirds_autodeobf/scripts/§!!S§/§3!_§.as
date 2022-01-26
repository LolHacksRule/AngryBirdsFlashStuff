package §!!S§
{
   import §3!M§.§`!;§;
   
   public class §3!_§
   {
      
      public static const §`p§:int = 0;
      
      public static const §+e§:int = 1;
      
      public static const §=z§:int = 2;
       
      
      public var §"!8§:Array;
      
      public var §8!H§:int;
      
      public var §-]§:int;
      
      public var mName:String;
      
      public var §<Q§:String;
      
      public function §3!_§(param1:int, param2:String)
      {
         super();
         this.§-]§ = param1;
         this.mName = param2;
         this.§"!8§ = new Array();
      }
      
      public function §^!O§(param1:§`!;§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§"!8§[this.§"!8§.length] = param1;
      }
      
      public function §!!$§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§<Q§ = param1;
         if(this.§-]§ == §`p§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!8§.length)
            {
               if((this.§"!8§[_loc2_] as §`!;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§"!8§[_loc2_] as §`!;§).setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§"!8§[_loc2_] as §`!;§).§,k§ == §>a§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§"!8§[_loc2_] as §`!;§).setComponentState(§>a§.§%b§);
               }
               _loc2_++;
            }
         }
         if(this.§-]§ == §=z§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§"!8§.length)
            {
               if((this.§"!8§[_loc2_] as §`!;§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§"!8§[_loc2_] as §`!;§).§,k§ == §>a§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§"!8§[_loc2_] as §`!;§).setComponentState(§>a§.§%b§);
                  }
                  else if((this.§"!8§[_loc2_] as §`!;§).§,k§ == §>a§.§%b§)
                  {
                     if(this.§>[§().length < this.§8!H§)
                     {
                        (this.§"!8§[_loc2_] as §`!;§).setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§>[§().length >= this.§8!H§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!8§.length)
                  {
                     if((this.§"!8§[_loc3_] as §`!;§).§,k§ == §>a§.§%b§)
                     {
                        (this.§"!8§[_loc3_] as §`!;§).setComponentState(§>a§.§9E§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§"!8§.length)
                  {
                     if((this.§"!8§[_loc3_] as §`!;§).§,k§ == §>a§.§9E§)
                     {
                        (this.§"!8§[_loc3_] as §`!;§).setComponentState(§>a§.§%b§);
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
         while(_loc2_ < this.§"!8§.length)
         {
            (this.§"!8§[_loc2_] as §`!;§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §7!N§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§"!8§.length)
         {
            (this.§"!8§[_loc1_] as §`!;§).setComponentState(§>a§.§%b§);
            _loc1_++;
         }
      }
      
      public function §4!8§(param1:Number) : void
      {
         this.§8!H§ = param1;
         if(param1 == 1)
         {
            this.§-]§ = §`p§;
         }
         else
         {
            this.§-]§ = §=z§;
         }
      }
      
      public function §]!_§(param1:Array) : void
      {
         this.§7!N§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§!!$§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §>[§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§"!8§.length)
         {
            if((this.§"!8§[_loc2_] as §`!;§).§,k§ == §>a§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§"!8§[_loc2_] as §`!;§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
