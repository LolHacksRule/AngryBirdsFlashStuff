package §@!M§
{
   import flash.events.Event;
   
   public class §8`§
   {
       
      
      private var §?!&§:String = "";
      
      private var §""N§:String = "";
      
      private var §`!=§:String = "";
      
      private var §-p§:Boolean = false;
      
      private var §4![§:Vector.<§!$ §>;
      
      private var §=$"§:§&s§;
      
      private var §<i§:Number = 0;
      
      private var §?$2§:String;
      
      public function §8`§()
      {
         super();
         this.§=$"§ = new §&s§();
         this.§4![§ = new Vector.<§!$ §>();
         §!"p§.addEventListener(§+N§.§2#k§,this.§;!j§);
         §!"p§.addEventListener(§?"<§.§;"H§,this.§`"y§);
         §!"p§.addEventListener(§?"<§.§#$8§,this.§`"y§);
      }
      
      private function § !L§() : §^#p§
      {
         var _loc1_:§0!p§ = §!"p§.§;!b§(this.§""N§);
         return _loc1_.§?W§(this.§?!&§);
      }
      
      private function §"j§() : void
      {
         this.§=$"§.removeEventListener(Event.COMPLETE,this.§>!3§);
         this.§=$"§.removeEventListener(Event.COMPLETE,this.§?J§);
         this.§=$"§.§>#x§(this.§?!&§);
      }
      
      private function §4B§(param1:String) : §!$ §
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4![§.length)
         {
            if(param1 == this.§4![§[_loc2_].songId)
            {
               return this.§4![§[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      private function §98§() : Boolean
      {
         if(§!"p§.§;!b§(this.§""N§) != null)
         {
            §!"p§.§5#u§(this.§""N§);
            return true;
         }
         return false;
      }
      
      public function §?#V§(param1:§!$ §, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         if(param2)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4![§.length)
            {
               if(param1.songId == this.§4![§[_loc3_].songId)
               {
                  this.§4![§.splice(_loc3_,1);
               }
               _loc3_++;
            }
         }
         this.§4![§.push(param1);
      }
      
      public function §^!s§() : void
      {
         this.§"j§();
         this.§98§();
         this.§?!&§ = "";
         this.§""N§ = "";
      }
      
      public function §"$;§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:§^#p§ = null;
         if(this.§?!&§ == param1 && !param2)
         {
            return;
         }
         this.§-p§ = param2;
         this.§`!=§ = param1;
         if(§!"p§.§;!b§(this.§""N§) != null && §!"p§.§;!b§(this.§""N§).isPlaying())
         {
            _loc3_ = this.§ !L§();
            this.§"j§();
            this.§=$"§.addEventListener(Event.COMPLETE,this.§>!3§);
            this.§=$"§.§+z§(this.§?!&§,_loc3_,0.5);
         }
         else
         {
            this.§>!3§();
         }
      }
      
      public function §<$8§(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(this.§?!&§ == param1 && !param3)
         {
            return;
         }
         this.§-p§ = false;
         this.§^!s§();
         var _loc4_:§!$ §;
         if((_loc4_ = this.§4B§(param1)) == null)
         {
            return;
         }
         this.§?!&§ = _loc4_.songId;
         this.§""N§ = _loc4_.§<$,§;
         this.§`!=§ = "";
         var _loc5_:§0!p§;
         if(!(_loc5_ = §!"p§.§;!b§(this.§""N§)))
         {
            §!"p§.§5#4§(this.§""N§,1,_loc4_.volume);
         }
         var _loc6_:Number = 0;
         if(this.§?$2§ == this.§?!&§)
         {
            _loc6_ = this.§<i§;
            param2 = true;
         }
         this.§?$2§ = "";
         this.§<i§ = 0;
         var _loc7_:§^#p§;
         if((_loc7_ = this.§^!E§(_loc4_,_loc6_)) == null)
         {
            return;
         }
         _loc7_.addEventListener(§^#p§.§3#<§,this.§9$$§);
         if(param2)
         {
            _loc7_.volume = 0;
            this.§=$"§.addEventListener(Event.COMPLETE,this.§?J§);
            this.§=$"§.§56§(this.§?!&§,_loc7_,_loc4_.volume,0.5);
         }
         else
         {
            _loc7_.volume = _loc4_.volume;
         }
      }
      
      private function §9$$§(param1:Event) : void
      {
         this.§<$8§(this.§?!&§,false,true);
      }
      
      private function §^!E§(param1:§!$ §, param2:Number = 0) : §^#p§
      {
         var _loc3_:§^#p§ = null;
         if(param1.§3"L§ != "")
         {
            _loc3_ = §!"p§.§[!X§(param1.§3"L§,param1.songId,param1.§>#>§,param1.§<$,§,param1.repeatCount,param1.volume,param2);
         }
         else
         {
            _loc3_ = §!"p§.playSound(param1.songId,param1.§<$,§,param1.repeatCount,param1.volume,param2);
         }
         return _loc3_;
      }
      
      private function §>!3§(param1:Event = null) : void
      {
         this.§<$8§(this.§`!=§,true,this.§-p§);
      }
      
      private function §?J§(param1:Event = null) : void
      {
         this.§=$"§.removeEventListener(Event.COMPLETE,this.§?J§);
      }
      
      private function §;!j§(param1:§+N§) : void
      {
         if(param1.§ ,§ == this.§?!&§)
         {
            this.§^!s§();
         }
      }
      
      private function §`"y§(param1:§?"<§) : void
      {
         if(param1.type == §?"<§.§#$8§)
         {
            if(param1.§<$,§ == this.§""N§)
            {
               this.§"j§();
               this.§?!&§ = "";
               this.§""N§ = "";
            }
         }
         else
         {
            this.§"j§();
            this.§?!&§ = "";
            this.§""N§ = "";
         }
      }
      
      public function §^#3§(param1:Number, param2:String) : void
      {
         this.§<i§ = param1;
         this.§?$2§ = param2;
      }
   }
}
