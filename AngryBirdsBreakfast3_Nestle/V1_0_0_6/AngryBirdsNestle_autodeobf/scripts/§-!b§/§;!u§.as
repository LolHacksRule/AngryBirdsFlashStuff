package §-!b§
{
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   
   public class §;!u§ extends §6"4§
   {
       
      
      private var §@=§:§[E§;
      
      private var §52§:String;
      
      public function §;!u§(param1:String, param2:§[E§, param3:Number)
      {
         super(param3);
         this.§52§ = param1;
         this.§@=§ = param2;
      }
      
      override public function updateDisplayObject(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:Sprite = param1 as Sprite;
         if(!_loc2_)
         {
            if(param1)
            {
               param1.dispose();
            }
         }
         return §[!3§.§^k§(this.§52§,this.§@=§,_loc2_);
      }
   }
}
