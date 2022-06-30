package §8P§
{
   import §'!N§.§<i§;
   
   public class §=1§
   {
      
      public static const §set §:int = 0;
      
      public static const §^g§:int = 1;
      
      public static const §&E§:int = 2;
       
      
      public var §2!G§:Array;
      
      public var §4_§:int;
      
      public var §>A§:int;
      
      public var mName:String;
      
      public var §?m§:String;
      
      public function §=1§(param1:int, param2:String)
      {
         super();
         this.§>A§ = param1;
         this.mName = param2;
         this.§2!G§ = new Array();
      }
      
      public function §^!U§(param1:§<i§) : void
      {
         if(!param1)
         {
            return;
         }
         this.§2!G§[this.§2!G§.length] = param1;
      }
      
      public function §;!O§(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.§?m§ = param1;
         if(this.§>A§ == §set §)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2!G§.length)
            {
               if((this.§2!G§[_loc2_] as §<i§).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.§2!G§[_loc2_] as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.§2!G§[_loc2_] as §<i§).§,!L§ == §4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.§2!G§[_loc2_] as §<i§).setComponentState(§4!Y§.§=?§);
               }
               _loc2_++;
            }
         }
         if(this.§>A§ == §&E§)
         {
            _loc2_ = 0;
            while(_loc2_ < this.§2!G§.length)
            {
               if((this.§2!G§[_loc2_] as §<i§).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.§2!G§[_loc2_] as §<i§).§,!L§ == §4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.§2!G§[_loc2_] as §<i§).setComponentState(§4!Y§.§=?§);
                  }
                  else if((this.§2!G§[_loc2_] as §<i§).§,!L§ == §4!Y§.§=?§)
                  {
                     if(this.§!_§().length < this.§4_§)
                     {
                        (this.§2!G§[_loc2_] as §<i§).setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.§!_§().length >= this.§4_§)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2!G§.length)
                  {
                     if((this.§2!G§[_loc3_] as §<i§).§,!L§ == §4!Y§.§=?§)
                     {
                        (this.§2!G§[_loc3_] as §<i§).setComponentState(§4!Y§.§[&§);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.§2!G§.length)
                  {
                     if((this.§2!G§[_loc3_] as §<i§).§,!L§ == §4!Y§.§[&§)
                     {
                        (this.§2!G§[_loc3_] as §<i§).setComponentState(§4!Y§.§=?§);
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
         while(_loc2_ < this.§2!G§.length)
         {
            (this.§2!G§[_loc2_] as §<i§).setEnabled(param1);
            _loc2_++;
         }
      }
      
      public function §=!f§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.§2!G§.length)
         {
            (this.§2!G§[_loc1_] as §<i§).setComponentState(§4!Y§.§=?§);
            _loc1_++;
         }
      }
      
      public function §9f§(param1:Number) : void
      {
         this.§4_§ = param1;
         if(param1 == 1)
         {
            this.§>A§ = §set §;
         }
         else
         {
            this.§>A§ = §&E§;
         }
      }
      
      public function §=!>§(param1:Array) : void
      {
         this.§=!f§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.§;!O§(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function §!_§() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.§2!G§.length)
         {
            if((this.§2!G§[_loc2_] as §<i§).§,!L§ == §4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.§2!G§[_loc2_] as §<i§).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
