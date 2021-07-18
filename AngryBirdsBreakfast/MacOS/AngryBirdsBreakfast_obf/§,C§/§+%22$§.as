package §,C§
{
   public class §+"$§
   {
      
      public static const §;!@§:String = "GROUND_HILLS";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §;!@§ = "GROUND_HILLS";
         }
      }
      
      protected var §>6§:String;
      
      protected var §5B§:String;
      
      protected var §63§:int;
      
      protected var §+!5§:int;
      
      protected var §"x§:Vector.<§ "%§>;
      
      protected var §'A§:String;
      
      protected var §9+§:String;
      
      public function §+"$§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            addr118:
            while(true)
            {
               this.§>6§ = param1;
            }
            addr118:
         }
         loop1:
         while(true)
         {
            this.§"x§ = new Vector.<§ "%§>();
            loop2:
            while(true)
            {
               this.§63§ = param2;
               loop3:
               while(true)
               {
                  this.§+!5§ = param3;
                  while(true)
                  {
                     if(!(_loc7_ && this))
                     {
                        continue loop2;
                     }
                     continue loop3;
                     addr37:
                     while(_loc8_ || param2)
                     {
                        this.§9+§ = param6;
                        if(_loc8_)
                        {
                           if(_loc8_)
                           {
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr118);
               }
            }
         }
      }
      
      public function get id() : String
      {
         return this.§>6§;
      }
      
      public function get §"!1§() : String
      {
         return this.§'A§;
      }
      
      public function get §^h§() : int
      {
         return this.§63§;
      }
      
      public function get §-=§() : int
      {
         return this.§+!5§;
      }
      
      public function get §var§() : String
      {
         return this.§5B§;
      }
      
      public function get §?!K§() : int
      {
         return this.§"x§.length;
      }
      
      public function §?t§(param1:XMLList) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:XML = null;
         var _loc3_:§ "%§ = null;
         for each(_loc2_ in param1.Layer)
         {
            _loc3_ = this.§?<§(_loc2_.@id,_loc2_.@sky,_loc2_.@scale,_loc2_.@speed / 1000,_loc2_.@xOffset,_loc2_.@yOffset,_loc2_.@foreground != 0,_loc2_.@tileable.toString().toLowerCase() != "false",_loc2_.@optional.toString().toLowerCase() == "true",_loc2_.@highQuality.toString().toLowerCase() == "true");
            if(!(_loc7_ && this))
            {
               _loc3_.§<q§(_loc2_.§<U§);
            }
         }
         if(_loc6_)
         {
            this.§"x§.reverse();
         }
      }
      
      public function §?<§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : § "%§
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc11_:§ "%§ = new § "%§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         if(!_loc12_)
         {
            this.§"x§.push(_loc11_);
         }
         return _loc11_;
      }
      
      public function §;"+§(param1:int) : § "%§
      {
         return this.§"x§[param1];
      }
   }
}
