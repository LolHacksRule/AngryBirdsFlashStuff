package §=I§
{
   import §=`§.§6!I§;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   
   public class §>r§ extends §?!t§
   {
       
      
      private var §,!8§:String;
      
      private var §5>§:Boolean;
      
      private var §'9§:Number;
      
      private var §;E§:int;
      
      public function §>r§(param1:Number, param2:Number, param3:String, param4:Boolean, param5:Number, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super(param1,param2);
         }
         while(true)
         {
            this.§,!8§ = param3;
            while(!_loc8_)
            {
               this.§5>§ = param4;
               do
               {
                  this.§'9§ = param5;
                  do
                  {
                     this.§;E§ = param6;
                  }
                  while(_loc8_);
                  
               }
               while(_loc8_);
               
               if(_loc7_)
               {
                  return;
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(super.update(param1,param2,param3));
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_ || param1)
                  {
                     §-!Q§.§#3§(this.§,!8§);
                  }
                  §§push(false);
                  continue;
               }
            }
            return §§pop();
         }
         while(true)
         {
            §§push(false);
            if(!(_loc5_ && param2))
            {
               break;
            }
            §§goto(addr53);
         }
         return §§pop();
      }
      
      override public function clone() : §?!t§
      {
         return new §>r§(time,duration,this.§,!8§,this.§5>§,this.§'9§,this.§;E§);
      }
   }
}
